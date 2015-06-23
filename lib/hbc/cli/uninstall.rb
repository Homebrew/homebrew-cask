class Hbc::CLI::Uninstall < Hbc::CLI::Base
  def self.run(*args)
    cask_tokens = cask_tokens_from(args)
    raise Hbc::CaskUnspecifiedError if cask_tokens.empty?
    force = args.include? '--force'
    cask_tokens.each do |cask_token|
      odebug "Uninstalling Cask #{cask_token}"
      cask = Hbc.load(cask_token)
      if !cask.installed? and !force
        if cask.installed_at_all?
          raise Hbc::CaskUninstallVersionError.new(cask)
        else 
          raise Hbc::CaskNotInstalledError.new(cask)
        end
      end
      Hbc::Installer.new(cask).uninstall(force)
    end
  end

  def self.help
    "uninstalls the given Cask"
  end
end
