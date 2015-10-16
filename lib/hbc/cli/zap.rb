class Hbc::CLI::Zap < Hbc::CLI::Base
  def self.run(*args)
    cask_tokens = cask_tokens_from(args)
    raise Hbc::CaskUnspecifiedError if cask_tokens.empty?
    cask_tokens.each do |cask_token|
      odebug "Zapping Cask #{cask_token}"
      cask = Hbc.load(cask_token)
      Hbc::Installer.new(cask).zap
    end
  end

  def self.help
    "zaps all files associated with the given Cask"
  end
end
