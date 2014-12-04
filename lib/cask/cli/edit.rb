class Cask::CLI::Edit < Cask::CLI::Base
  def self.run(*args)
    cask_tokens = cask_tokens_from(args)
    raise CaskUnspecifiedError if cask_tokens.empty?
    # only respects the first argument
    cask_token = cask_tokens.first.sub(/\.rb$/i, '')
    cask_path = Cask.path(cask_token)
    odebug "Opening editor for Cask #{cask_token}"
    unless cask_path.exist?
      raise CaskUnavailableError, %Q{#{cask_token}, run "brew cask create #{cask_token}" to create a new Cask}
    end
    exec_editor cask_path
  end

  def self.help
    "edits the given Cask"
  end
end
