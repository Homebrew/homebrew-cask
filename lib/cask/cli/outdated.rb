class Cask::CLI::Outdated
  def self.run(*args)
    upgradable = Cask.upgradable

    if upgradable.length == 0
      puts "All Casks up to date"
    else
      puts upgradable
    end
  end

  def self.help
    "lists all outdated Casks"
  end
end
