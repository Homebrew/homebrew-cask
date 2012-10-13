class Cask::CLI::List
  def self.run(*arguments)
    puts_columns Cask::CLI.nice_listing(Cask.installed)
  end

  def self.help
    "lists installed casks"
  end
end
