# frozen_string_literal: true

require_relative "changed_files"

module CiMatrix
  MAX_JOBS = 256

  def self.generate(tap, labels: [])
    odie "This command must be run from inside a tap directory." unless tap

    changed_files = ChangedFiles.collect(tap)

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

    changed_files[:modified_cask_files].map do |path|
      cask = Cask::CaskLoader.load(path)

      appcast_arg = if labels.include?("ci-skip-appcast")
        "--no-appcast"
      else
        "--appcast"
      end

      audit_args = ["--download", appcast_arg, "--online"]

      audit_args << "--new-cask" if changed_files[:added_files].include?(path)

      {
        name:         "test (#{cask.token})",
        tap:          tap.name,
        cask:         {
          token: cask.token,
          path:  "./#{path}",
        },
        audit_args:   audit_args,
        skip_install: labels.include?("ci-skip-install"),
      }
    end
  end
end
