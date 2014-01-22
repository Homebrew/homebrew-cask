class Cask::CLI::Uninstall
  def self.run(*args)
    raise CaskUnspecifiedError if args.empty?
    cask_names = args.reject { |a| a.chars.first == '-' }
    cask_names.each do |cask_name|
      odebug "Uninstalling Cask #{cask_name}"
      cask = Cask.load(cask_name)
      raise CaskNotInstalledError.new(cask) unless cask.installed?
      Cask::Installer.new(cask).uninstall
    end
  end

  def self.help
    "uninstalls the cask of the given name"
  end
end
