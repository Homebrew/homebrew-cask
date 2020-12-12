# frozen_string_literal: true

require "cask/cask_loader"
require "cask/installer"

require "utils/github"
require "utils/formatter"

require_relative "lib/check"
require_relative "lib/ci_matrix"

module Cask
  class Cmd
    class Ci < AbstractCommand
      def self.description
        "Test changes in a Homebrew Cask tap."
      end

      def run
        odeprecated "brew cask ci", disable_on: Time.new(2020, 12, 31)

        raise CaskError, "This command isn’t meant to be run locally." unless ENV.key?("CI")

        tap = Tap.from_path(Dir.pwd)

        matrix = CiMatrix.generate(tap)

        $stdout.sync = true
        $stderr.sync = true

        overall_success = true

        matrix.each do |m|
          path = m[:cask][:path]

          cask = CaskLoader.load(path)

          overall_success &= step "brew cask style #{cask.token}" do
            Style.run(cask.sourcefile_path)
            true
          end

          overall_success &= step "brew cask audit #{cask.token}" do
            Audit.run(*m[:audit_args], cask.sourcefile_path)
            true
          end

          if (macos_requirement = cask.depends_on.macos) && !macos_requirement.satisfied?
            opoo "Skipping installation: #{macos_requirement.message}"
            next
          end

          was_installed = cask.installed?

          installer = Installer.new(cask, verbose: true)

          before = nil

          cask_and_formula_dependencies = nil

          overall_success &= step "brew cask install #{cask.token}" do
            cask_and_formula_dependencies = installer.missing_cask_and_formula_dependencies

            if was_installed
              old_cask = CaskLoader.load(cask.installed_caskfile)
              Installer.new(old_cask, verbose: true).zap
            end

            before = Check.all

            installer.install
          end

          overall_success &= step "brew cask uninstall #{cask.token}" do
            success = begin
              if manual_installer?(cask)
                puts "Cask has a manual installer, skipping..."
              else
                installer.uninstall
              end
              true
            rescue => e
              $stderr.puts e.message
              $stderr.puts e.backtrace
              false
            ensure
              cask_and_formula_dependencies.reverse_each do |cask_or_formula|
                next unless cask_or_formula.is_a?(Cask)

                Installer.new(cask_or_formula, verbose: true).uninstall if cask_or_formula.installed?
              end
            end

            after = Check.all

            errors = Check.errors(before, after, cask: cask)

            next success if errors.empty?

            errors.each do |error|
              onoe error
            end

            false
          end
        end

        if overall_success
          puts Formatter.success("Build finished successfully.", label: "Success")
          return
        end

        raise CaskError, "Build failed."
      end

      private

      def step(name)
        group = Formatter.headline(name.to_s, color: :yellow)

        puts "::group::#{group}"

        success = begin
          yield != false
        rescue => e
          $stderr.puts e.message
          $stderr.puts e.backtrace
          false
        end

        puts "::endgroup::#{group}"

        success
      end

      def manual_installer?(cask)
        cask.artifacts.any? { |artifact| artifact.is_a?(Artifact::Installer::ManualInstaller) }
      end
    end
  end
end
