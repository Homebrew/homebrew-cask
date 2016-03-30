class Hbc::CLI::Uninstall < Hbc::CLI::Base
  def self.run(*args)
    cask_tokens = cask_tokens_from(args)
    raise Hbc::CaskUnspecifiedError if cask_tokens.empty?
    force = args.include? '--force'
    cask_tokens.each do |cask_token|
      odebug "Uninstalling Cask #{cask_token}"
      cask = Hbc.load(cask_token)
      raise Hbc::CaskNotInstalledError.new(cask) unless cask.installed? or force
      Hbc::Installer.new(cask).uninstall(force)
    end
  end

  def self.help
    "uninstalls the given Cask"
  end
end
