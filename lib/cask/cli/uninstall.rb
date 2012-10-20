class Cask::CLI::Uninstall
  def self.run(*cask_names)
    cask_names.each do |cask_name|
      begin
       cask = Cask.load(cask_name)
       Cask::Installer.uninstall(cask)
      rescue CaskUnavailableError,CaskNotInstalledError => e
        onoe e
      end
    end
  end

  def self.help
    "uninstalls the cask of the given name"
  end
end
