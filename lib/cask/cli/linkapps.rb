class Cask::CLI::Linkapps
  def self.run(*args)
    casks_to_link = args.empty? ? Cask.installed : args.map { |arg| Cask.load(arg) }
    casks_to_link.each do |cask|
      cask.linkapps
    end
  end

  def self.help
    "makes a symlink from all cask-installed .app files into ~/Applications"
  end
end
