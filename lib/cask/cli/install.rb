class Cask::CLI::Install
  def self.run(*args)
    raise CaskUnspecifiedError if args.empty?
    cask_names = args.reject { |a| a == '--force' }
    force = args.include? '--force'
    cask_names.each do |cask_name|
      begin
       cask = Cask.load(cask_name)
       Cask::Installer.new(cask).install(force)
      rescue CaskError => e
        onoe e
      end
    end
  end

  def self.help
    "installs the cask of the given name"
  end
end
