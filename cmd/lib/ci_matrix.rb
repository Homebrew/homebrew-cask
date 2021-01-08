# frozen_string_literal: true

require "cask/cask_loader"

require_relative "changed_files"

module CiMatrix
  MAX_JOBS = 256

  RUNNERS = {
    { symbol: :catalina, name: "macos-10.15" } => 0.9,
    { symbol: :big_sur,  name: "macos-11.0" }  => 0.1,
  }.freeze

  def self.random_runner
    @random_runner ||= RUNNERS.max_by { |(_, weight)| rand ** (1.0 / weight) }.first
  end

  def self.runners(path)
    cask_content = path.read

    if cask_content.match?(/\bMacOS\s*\.version\b/m) &&
       RUNNERS.keys.none? { |runner| cask_content.include?(runner[:symbol].inspect) }
      # If the cask depends on `MacOS.version`, test it on every possible macOS version.
      RUNNERS.keys
    else
      # Otherwise, select a runner based on weighted random sample.
      [random_runner]
    end
  end

  def self.generate(tap, labels: [])
    odie "This command must be run from inside a tap directory." unless tap

    tap.extend(ChangedFiles)

    changed_files = tap.changed_files

    ruby_files_in_wrong_directory =
      changed_files[:modified_ruby_files] - (
      changed_files[:modified_cask_files] +
      changed_files[:modified_command_files] +
      changed_files[:modified_github_actions_files]
    )

    if ruby_files_in_wrong_directory.any?
      ruby_files_in_wrong_directory.each do |path|
        puts "::error file=#{path}::File is in wrong directory."
      end

      odie "Found Ruby files in wrong directory:\n#{ruby_files_in_wrong_directory.join("\n")}"
    end

    modified_cask_files = changed_files[:modified_cask_files]

    jobs = modified_cask_files.count
    odie "Maximum job matrix size exceeded: #{jobs}/#{MAX_JOBS}" if jobs > MAX_JOBS

    changed_files[:modified_cask_files].flat_map do |path|
      cask_token = path.basename(".rb")

      appcast_arg = if labels.include?("ci-skip-appcast")
        "--no-appcast"
      else
        "--appcast"
      end

      audit_args = [appcast_arg, "--online"]

      audit_args << "--new-cask" if changed_files[:added_files].include?(path)

      runners(path).map do |runner|
        {
          name:         "test #{cask_token} (#{runner[:name]})",
          tap:          tap.name,
          cask:         {
            token: cask_token,
            path:  "./#{path}",
          },
          audit_args:   audit_args,
          skip_install: labels.include?("ci-skip-install"),
          runner:       runner[:name],
        }
      end
    end
  end
end
