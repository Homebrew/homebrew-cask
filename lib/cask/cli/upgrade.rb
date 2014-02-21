class Cask::CLI::Upgrade
  def self.run(*args)
    cask_names_cmdline = args.reject { |a| a.chars.first == '-' }

    if cask_names_cmdline.length > 0
      upgradable_casks = cask_names_cmdline.map{|name| Cask.load(name)}.select(&:update_available?)
    else
      upgradable_casks = Cask.upgradable
    end

    odebug "Upgradable casks: #{upgradable_casks}"

    puts "No upgrade available" if upgradable_casks.length == 0

    upgradable_casks.each do |cask|
      puts "Upgrading #{cask} from #{cask.installed_version} to #{cask.version}"
      Cask::Installer.new(cask).install()
    end
  end

  def self.help
    "upgrades the cask (of the given name if name given)"
  end
end
