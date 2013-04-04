module Cask::CLI::Edit
  def self.run(*arguments)
    cask_name, *args = *arguments
    cask_path = Cask.path(cask_name)
    unless cask_path.exist? || args.include?('--create')
      raise CaskUnavailableError, "#{cask_name}, add --create to make a new cask with this name"
    end
    exec_editor cask_path
  end

  def self.help
    "edits the cask of the given name"
  end
end
