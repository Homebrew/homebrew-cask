class Cask::CLI::Cat < Cask::CLI::Base
  def self.run(*args)
    cask_tokens = cask_tokens_from(args)
    raise CaskUnspecifiedError if cask_tokens.empty?
    # only respects the first argument
    cask_token = cask_tokens.first.sub(/\.rb$/i, '')
    cask_path = Cask.path(cask_token)
    raise CaskUnavailableError, cask_token.to_s unless cask_path.exist?
    puts File.open(cask_path) { |f| f.read }
  end

  def self.help
    "dump raw source of the given Cask to the standard output"
  end
end
