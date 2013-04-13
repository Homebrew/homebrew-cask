class Cask::CLI::Unlinkapps
  def self.run(*args)
    casks_to_link = args.empty? ? Cask.installed : args
    casks_to_link.each do |cask_name|
      Cask::AppLinker.new(Cask.load(cask_name)).unlink
    end
  end

  def self.help
    "removes symlinks from cask-installed .app files from ~/Applications"
  end
end
