module Cask::CLI::Edit
  def self.run(*arguments)
    raise CaskUnspecifiedError if arguments.empty?
    cask_name, *_ = *arguments
    cask_path = Cask.path(cask_name)
    unless cask_path.exist?
      raise CaskUnavailableError, "#{cask_name}, use `brew cask create #{cask_name}` to make a new cask with this name"
    end
    exec_editor cask_path
  end

  def self.help
    "edits the cask of the given name"
  end
end
