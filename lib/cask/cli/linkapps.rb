class Cask::CLI::Linkapps
  def self.run(*args)
    casks_to_link = args.empty? ? Cask.installed : args
    casks_to_link.each do |cask_name|
      Cask.load(cask_name).linkapps
    end
  end

  def self.help
    "makes a symlink from all cask-installed .app files into ~/Applications"
  end
end
