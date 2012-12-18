class Cask::CLI::Install
  def self.run(*cask_names)
    cask_names.each do |cask_name|
      begin
       cask = Cask.load(cask_name)
       Cask::Installer.install(cask)
      rescue CaskUnavailableError => e
        onoe e
      rescue ChecksumMissingError => e
        onoe e
      rescue ChecksumMismatchError => e
        onoe e
      end
    end
  end

  def self.help
    "installs the cask of the given name"
  end
end
