module Cask::CLI::Edit
  def self.run(*arguments)
    cask_name, *_ = *arguments
    cask_path = Cask.path(cask_name)
    raise CaskUnavailableError, cask_name + ".rb" if cask_path.nil? || !cask_path.file?
    exec_editor cask_path
  end

  def self.help
    "edits the cask of the given name"
  end
end
