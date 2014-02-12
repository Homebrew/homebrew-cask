class Cask::CLI::Install
  def self.run(*args)
    raise CaskUnspecifiedError if args.empty?
    cask_names = args.reject { |a| a.chars.first == '-' }
    force = args.include? '--force'
    force_download = args.include? '--force-download'
    cask_names.each do |cask_name|
      odebug "Installing Cask #{cask_name}"
      cask = Cask.load(cask_name)
      Cask::Installer.new(cask).install(force, force_download)
    end
  end

  def self.help
    "installs the cask of the given name"
  end
end
