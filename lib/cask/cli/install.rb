class Cask::CLI::Install
  def self.run(*arguments)
    cask_name, *rest = *arguments
    cask = Cask.load(cask_name)
    cask.install
  end

  def self.help
    "installs the cask of the given name"
  end
end
