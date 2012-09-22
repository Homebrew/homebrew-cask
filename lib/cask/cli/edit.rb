class Cask::CLI::Edit
  def self.run(*arguments)
    cask_name, *rest = *arguments
    cask_path = Cask.path.join("#{cask_name}.rb")
    raise CaskUnavailableError, cask_path.basename('.rb').to_s unless cask_path.file?
    exec_editor cask_path
  end

  def self.help
    "edits the cask of the given name"
  end
end
