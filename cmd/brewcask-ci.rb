# frozen_string_literal: false

require "utils/github"
require "utils/formatter"

require_relative "lib/capture"
require_relative "lib/diffable"
require_relative "lib/travis"

module Hbc
  class CLI
    class Ci < AbstractCommand
      def run
        unless ENV.key?("TRAVIS")
          raise CaskError, "This command isn’t meant to be run locally."
        end

        unless tap
          raise CaskError, "This command must be run from inside a tap directory."
        end

        ruby_files_in_wrong_directory = modified_ruby_files - (modified_cask_files + modified_command_files)

        unless ruby_files_in_wrong_directory.empty?
          raise CaskError, "Casks are in the wrong directory:\n" +
                           ruby_files_in_wrong_directory.join("\n")
        end

        if modified_cask_files.count > 1 && tap.name != "homebrew/cask-fonts"
          raise CaskError, "More than one cask modified; please submit a pull request for each cask separately."
        end

        overall_success = true

        modified_cask_files.each do |path|
          cask = CaskLoader.load(path)

          overall_success &= step "brew cask audit #{cask.token}", "audit" do
            Auditor.audit(cask, audit_download: true,
                                check_token_conflicts: added_cask_files.include?(path),
                                commit_range: ENV["TRAVIS_COMMIT_RANGE"])
          end

          overall_success &= step "brew cask style #{cask.token}", "style" do
            Style.run(path)
          end

          was_installed = cask.installed?
          cask_dependencies = CaskDependencies.new(cask).reject(&:installed?)

          checks = {
            installed_apps: Diffable.new do
              ["/Applications", File.expand_path("~/Applications")]
                .flat_map { |dir| Dir["#{dir}/**/*.app"] }
            end,
            installed_kexts: Diffable.new do
              system_command!("/usr/sbin/kextstat", args: ["-kl"], print_stderr: false)
                .stdout
                .lines
                .map { |l| l.match(/^.{52}([^\s]+)/)[1] }
                .grep_v(/^com\.apple\./)
            end,
            installed_launchjobs: Diffable.new do
              format_launchjob = lambda { |file|
                name = file.basename(".plist").to_s
                label = Plist.parse_xml(File.read(file))["Label"]
                (name == label) ? name : "#{name} (#{label})"
              }

              [
                "~/Library/LaunchAgents",
                "~/Library/LaunchDaemons",
                "/Library/LaunchAgents",
                "/Library/LaunchDaemons",
              ].map { |p| Pathname(p).expand_path }
                .select(&:directory?)
                .flat_map(&:children)
                .select { |child| child.extname == ".plist" }
                .map(&format_launchjob)
            end,
            loaded_launchjobs: Diffable.new do
              launchctl = lambda do |sudo|
                system_command!("/bin/launchctl", args: ["list"], print_stderr: false, sudo: sudo)
                  .stdout
                  .lines.drop(1)
              end

              [false, true]
                .flat_map(&launchctl)
                .map { |l| l.split(/\s+/)[2] }
                .grep_v(/^com\.apple\./)
            end,
            installed_pkgs: Diffable.new do
              Pathname("/var/db/receipts")
                .children
                .grep(/\.plist$/)
                .map(&:basename)
            end,
          }

          overall_success &= step "brew cask install #{cask.token}", "install" do
            Installer.new(cask, force: true).uninstall if was_installed

            checks.values.each(&:before)

            Installer.new(cask, verbose: true).install
          end

          overall_success &= step "brew cask uninstall #{cask.token}", "uninstall" do
            success = begin
              Installer.new(cask, verbose: true).uninstall
              true
            rescue => e
              $stderr.puts e.message
              $stderr.puts e.backtrace
              false
            ensure
              cask_dependencies.each do |c|
                Installer.new(c, verbose: true).uninstall if c.installed?
              end
            end

            checks.each do |name, check|
              check.after
              next unless check.changed?

              success = false

              message = case name
              when :installed_pkgs
                "Some packages were not uninstalled."
              when :loaded_launchjobs
                "Some launch jobs were not unloaded."
              when :installed_launchjobs
                "Some launch jobs were not uninstalled."
              when :installed_kexts
                "Some kernel extensions were not uninstalled."
              when :installed_apps
                "Some applications were not uninstalled."
              end

              $stderr.puts Formatter.error(message, label: "Error")
              $stderr.puts check.diff_lines.join("\n")
            end

            success
          end
        end

        if overall_success
          puts Formatter.success("Build finished successfully.", label: "Success")
          return
        end

        raise CaskError, "Build failed."
      end

      private

      def step(name, travis_id)
        success = false
        output = nil

        Travis.fold travis_id do
          print "#{Tty.bold}#{Tty.yellow}#{name}#{Tty.reset} "
          $stdout.flush

          success, output = capture do
            begin
              yield != false
            rescue => e
              $stderr.puts e.message
              false
            end
          end

          if success
            puts Formatter.success("✔")
            puts output
          else
            puts Formatter.error("✘")
          end
        end

        puts output unless success

        success
      ensure
        $stdout.flush
        $stderr.flush
      end

      def tap
        @tap ||= if ENV.key?("TRAVIS_REPO_SLUG")
          Tap.fetch(ENV["TRAVIS_REPO_SLUG"])
        else
          Tap.from_path(Dir.pwd)
        end
      end

      def modified_files
        @modified_files ||= system_command!(
          "git", args: ["diff", "--name-only", "--diff-filter=AMR", ENV["TRAVIS_COMMIT_RANGE"]]
        ).stdout.split("\n").map { |path| Pathname(path) }
      end

      def added_files
        @added_files ||= system_command!(
          "git", args: ["diff", "--name-only", "--diff-filter=A", ENV["TRAVIS_COMMIT_RANGE"]]
        ).stdout.split("\n").map { |path| Pathname(path) }
      end

      def modified_ruby_files
        @modified_ruby_files ||= modified_files.select { |path| path.extname == ".rb" }
      end

      def modified_command_files
        @modified_command_files ||= modified_files.select { |path| tap.command_file?(path) || path.ascend.to_a.last.to_s == "cmd" }
      end

      def modified_cask_files
        @modified_cask_files ||= modified_files.select { |path| tap.cask_file?(path) }
      end

      def added_cask_files
        @added_cask_files ||= added_files.select { |path| tap.cask_file?(path) }
      end
    end
  end
end
