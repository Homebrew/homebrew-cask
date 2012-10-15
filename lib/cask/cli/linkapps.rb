class Cask::CLI::Linkapps
  def self.run(*arguments)
    casks_to_link = arguments.empty? ? Cask.installed : arguments
    casks_to_link.each do |app|
      Cask.load(app).linkapps
    end
  end

  def self.help
    "makes a symlink from all cask-installed .app files into ~/Applications"
  end
end
