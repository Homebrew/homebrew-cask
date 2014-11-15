class Cask::CLI::Uninstall < Cask::CLI::Base
  def self.run(*args)
    cask_names = cask_names_from(args)
    raise CaskUnspecifiedError if cask_names.empty?
    force = args.include? '--force'
    cask_names.each do |cask_name|
      odebug "Uninstalling Cask #{cask_name}"
      cask = Cask.load(cask_name)
      raise CaskNotInstalledError.new(cask) unless cask.installed? or force
      Cask::Installer.new(cask).uninstall(force)
    end
  end

  def self.help
    "uninstalls the Cask of the given name"
  end
end
