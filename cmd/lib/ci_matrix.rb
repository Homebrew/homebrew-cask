require_relative "changed_files"

module CiMatrix
  def self.generate(tap)
    odie "This command must be run from inside a tap directory." unless tap

    changed_files = ChangedFiles.collect(tap)

    ruby_files_in_wrong_directory =
      changed_files[:modified_ruby_files] - (changed_files[:modified_cask_files] + changed_files[:modified_command_files] + changed_files[:modified_github_actions_files])

    if ruby_files_in_wrong_directory.any?
      ruby_files_in_wrong_directory.each do |path|
        puts "::error file=#{path}::File is in wrong directory."
      end

      odie "Found Ruby files in wrong directory:\n#{ruby_files_in_wrong_directory.join("\n")}"
    end

    changed_files[:modified_cask_files].map do |path|
      cask = Cask::CaskLoader.load(path)

      audit_args = ["--download", "--appcast", "--online"]

      if changed_files[:added_files].include?(path)
        audit_args << "--strict"
        audit_args << "--token-conflicts"
        audit_args << "--new-cask"
      end

      {
        name:              cask.token,
        cask:              "./#{path}",
        working_directory: tap.path,
        audit_args:        audit_args,
      }
    end
  end
end
