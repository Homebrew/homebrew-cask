class Cask::CLI::Uninstall
  def self.run(*cask_names)
    begin
      casks = cask_names.map { |cn| Cask.load(cn) }
      casks.each do |cask|
        raise CaskNotInstalledError.new(cask) unless cask.installed?
        Cask::PkgInstaller.new(cask).uninstall
        Cask::AppLinker.new(cask).unlink
        Cask::Installer.uninstall(cask)
      end
    rescue CaskError => e
      onoe e
    end
  end

  def self.help
    "uninstalls the cask of the given name"
  end
end
