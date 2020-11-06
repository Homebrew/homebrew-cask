# frozen_string_literal: true

module ChangedFiles
  def self.collect(tap)
    commit_range_start = system_command!("git", args: ["rev-parse", "origin/master"]).stdout.chomp
    commit_range_end = system_command!("git", args: ["rev-parse", "HEAD"]).stdout.chomp
    commit_range = "#{commit_range_start}...#{commit_range_end}"

    modified_files = system_command!(
      "git", args: ["diff", "--name-only", "--diff-filter=AMR", commit_range]
    ).stdout.split("\n").map { |path| Pathname(path) }

    added_files = system_command!(
      "git", args: ["diff", "--name-only", "--diff-filter=A", commit_range]
    ).stdout.split("\n").map { |path| Pathname(path) }

    modified_ruby_files = modified_files.select { |path| path.extname == ".rb" }
    modified_command_files = modified_files.select { |path| path.ascend.to_a.last.to_s == "cmd" }
    modified_github_actions_files = modified_files.select { |path| path.to_s.start_with?(".github/actions/") }
    modified_cask_files = modified_files.select { |path| tap.cask_file?(path) }

    {
      modified_files:                modified_files,
      added_files:                   added_files,
      modified_ruby_files:           modified_ruby_files,
      modified_command_files:        modified_command_files,
      modified_github_actions_files: modified_github_actions_files,
      modified_cask_files:           modified_cask_files,
    }
  end
end
