class Cask::CLI::Install
  def self.run(*args)
    cask_names = args.reject { |a| a == '--force' }
    force = args.include? '--force'
    cask_names.each do |cask_name|
      begin
       cask = Cask.load(cask_name)
       Cask::Installer.install(cask)
       Cask::AppLinker.new(cask).link
       Cask::PkgInstaller.new(cask).install
      rescue CaskError => e
        onoe e
      rescue FormulaAlreadyInstalledError => e
        opoo e.message
      end
    end
  end

  def self.help
    "installs the cask of the given name"
  end
end
