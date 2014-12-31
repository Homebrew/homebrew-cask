class Cask::CLI::Zap < Cask::CLI::Base
  def self.run(*args)
    cask_tokens = cask_tokens_from(args)
    raise CaskUnspecifiedError if cask_tokens.empty?
    cask_tokens.each do |cask_token|
      odebug "Zapping Cask #{cask_token}"
      cask = Cask.load(cask_token)
      Cask::Installer.new(cask).zap
    end
  end

  def self.help
    "zaps all files associated with the given Cask"
  end
end
