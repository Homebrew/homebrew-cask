class Cask::CLI::Uninstall < Cask::CLI::Base
  def self.run(*args)
    cask_tokens = cask_tokens_from(args)
    raise CaskUnspecifiedError if cask_tokens.empty?
    force = args.include? '--force'
    cask_tokens.each do |cask_token|
      odebug "Uninstalling Cask #{cask_token}"
      cask = Cask.load(cask_token)
      raise CaskNotInstalledError.new(cask) unless cask.installed? or force
      Cask::Installer.new(cask).uninstall(force)
    end
  end

  def self.help
    "uninstalls the given Cask"
  end
end
