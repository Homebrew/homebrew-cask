class Cask::CLI::Edit < Cask::CLI::Base
  def self.run(*arguments)
    raise CaskUnspecifiedError if arguments.empty?
    cask_name = arguments.first.sub(/\.rb$/i,'')
    cask_path = Cask.path(cask_name)
    odebug "Opening editor for Cask #{cask_name}"
    unless cask_path.exist?
      raise CaskUnavailableError, %Q{#{cask_name}, run "brew cask create #{cask_name}" to create a new cask with this name}
    end
    exec_editor cask_path
  end

  def self.help
    "edits the cask of the given name"
  end
end
