# frozen_string_literal: false

require "utils/github"
require "utils/formatter"

require_relative "lib/capture"
require_relative "lib/check"
require_relative "lib/travis"

module GitHub
  module_function

  def update_check_run(check_run, data:)
    open_api(check_run.fetch("url"), data: data)
  end
end

module Cask
  class Cmd
    class Ci < AbstractCommand
      def run
        unless ENV.key?("CI")
          raise CaskError, "This command isn’t meant to be run locally."
        end

        $stdout.sync = true
        $stderr.sync = true

        unless tap
          raise CaskError, "This command must be run from inside a tap directory."
        end

        @commit_range = begin
          commit_range_start = system_command!("git", args: ["rev-parse", "origin/master"]).stdout.chomp
          commit_range_end = system_command!("git", args: ["rev-parse", "HEAD"]).stdout.chomp
          "#{commit_range_start}...#{commit_range_end}"
        end

        ruby_files_in_wrong_directory = modified_ruby_files - (modified_cask_files + modified_command_files + modified_github_files)

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
                                audit_appcast: true,
                                check_token_conflicts: added_cask_files.include?(path),
                                commit_range: @commit_range)
          end

          overall_success &= step "brew cask style #{cask.token}", "style" do
            begin
              Style.run(path)
            rescue => e
              json = Style.rubocop(path, json: true)

              event = JSON.parse(File.read(ENV.fetch("HOMEBREW_GITHUB_EVENT_PATH")))

              puts "-" * 100
              puts JSON.pretty_generate(event)
              puts "-" * 100

              check_runs = GitHub.check_runs(pr: event.fetch("pull_request")).fetch("check_runs")

              puts JSON.pretty_generate(check_runs)

              puts "-" * 100

              check_run = check_runs.detect { |check_run| check_run.fetch("name") == "ci" }
              puts JSON.pretty_generate(check_run)

              offenses = json.fetch("files")
                       .flat_map do |file|
                         file.fetch("offenses").map do |o|
                           {
                             path:       file.fetch("path"),
                             start_line: o.fetch("location").fetch("start_line"),
                             end_line:   o.fetch("location").fetch("last_line"),
                             annotation_level: 'failure',
                             message:    o.fetch("message"),
                           }
                         end
                       end

              GitHub.update_check_run(check_run, data: {
                output: {
                  title: 'RuboCop',
                  summary: 'Style violations were found.',
                  annotations: offenses,
                }
              })

              puts "-" * 100
              puts JSON.pretty_generate(offenses)
              puts "-" * 100

              raise e
            end
          end

          if (macos_requirement = cask.depends_on.macos) && !macos_requirement.satisfied?
            opoo "Skipping installation: #{macos_requirement.message}"
            next
          end

          was_installed = cask.installed?
          cask_dependencies = CaskDependencies.new(cask).reject(&:installed?)

          check = Check.new

          overall_success &= step "brew cask install #{cask.token}", "install" do
            Installer.new(cask, verbose: true).zap if was_installed

            check.before

            Installer.new(cask, verbose: true).install
          end

          overall_success &= step "brew cask uninstall #{cask.token}", "uninstall" do
            success = begin
              if manual_installer?(cask)
                puts 'Cask has a manual installer, skipping...'
              else
                Installer.new(cask, verbose: true).uninstall
              end
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

            check.after

            next success if check.success?

            $stderr.puts check.message
            false
          end

          if check.success? && !check.success?(ignore_exceptions: false)
            overall_success &= step "brew cask zap #{cask.token}", "zap" do
              success = begin
                Installer.new(cask, verbose: true).zap
                true
              rescue => e
                $stderr.puts e.message
                $stderr.puts e.backtrace
                false
              end

              check.after

              next success if check.success?(ignore_exceptions: false)

              $stderr.puts check.message(stanza: "zap")
              false
            end
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
        unless ENV.key?("TRAVIS_COMMIT_RANGE")
          puts Formatter.headline(name, color: :yellow)
          return yield != false
        end

        success = false
        output = nil

        Travis.fold travis_id do
          print Formatter.headline("#{name} ", color: :yellow)

          real_stdout = $stdout.dup

          travis_wait = Thread.new do
            loop do
              sleep 595
              real_stdout.print "\u200b"
            end
          end

          success, output = capture do
            begin
              yield != false
            rescue => e
              $stderr.puts e.message
              false
            end
          end

          travis_wait.kill
          travis_wait.join

          if success
            puts Formatter.success("✔")
            puts output unless output.empty?
          else
            puts Formatter.error("✘")
          end
        end

        puts output unless success

        success
      end

      def tap
        @tap ||= Tap.from_path(Dir.pwd)
      end

      def modified_files
        @modified_files ||= system_command!(
          "git", args: ["diff", "--name-only", "--diff-filter=AMR", @commit_range]
        ).stdout.split("\n").map { |path| Pathname(path) }
      end

      def added_files
        @added_files ||= system_command!(
          "git", args: ["diff", "--name-only", "--diff-filter=A", @commit_range]
        ).stdout.split("\n").map { |path| Pathname(path) }
      end

      def modified_ruby_files
        @modified_ruby_files ||= modified_files.select { |path| path.extname == ".rb" }
      end

      def modified_command_files
        @modified_command_files ||= modified_files.select { |path| tap.command_file?(path) || path.ascend.to_a.last.to_s == "cmd" }
      end

      def modified_github_files
        @modified_github_files ||= modified_files.select { |path| path.to_s.start_with?(".github/") }
      end

      def modified_cask_files
        @modified_cask_files ||= modified_files.select { |path| tap.cask_file?(path) }
      end

      def added_cask_files
        @added_cask_files ||= added_files.select { |path| tap.cask_file?(path) }
      end

      def manual_installer?(cask)
        cask.artifacts.any? { |artifact| artifact.is_a?(Artifact::Installer::ManualInstaller) }
      end
    end
  end
end
