class Cask::CLI::Edit < Cask::CLI::Base
  def self.run(*args)
    cask_names = cask_names_from(args)
    raise CaskUnspecifiedError if cask_names.empty?
    # only respects the first argument
    cask_name = cask_names.first.sub(/\.rb$/i, '')
    cask_path = Cask.path(cask_name)
    odebug "Opening editor for Cask #{cask_name}"
    unless cask_path.exist?
      raise CaskUnavailableError, %Q{#{cask_name}, run "brew cask create #{cask_name}" to create a new Cask with this name}
    end
    exec_editor cask_path
  end

  def self.help
    "edits the Cask of the given name"
  end
end
