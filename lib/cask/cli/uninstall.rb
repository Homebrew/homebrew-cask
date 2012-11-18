class Cask::CLI::Uninstall
  def self.run(*cask_names)
    begin
      casks = cask_names.map { |cn| Cask.load(cn) }
      casks.each do |cask|
        Cask::Installer.uninstall(cask)
      end
    rescue CaskUnavailableError,CaskNotInstalledError => e
      onoe e
    end
  end

  def self.help
    "uninstalls the cask of the given name"
  end
end
