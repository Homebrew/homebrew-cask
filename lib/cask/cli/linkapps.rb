class Cask::CLI::Linkapps
  def self.run(*arguments)
    Cask.installed.map(&:linkapps)
  end

  def self.help
    "makes a symlink from all cask-installed .app files into ~/Applications"
  end
end
