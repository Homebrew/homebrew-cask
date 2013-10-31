class Cask::CLI::List
  
  def self.run(*arguments)
    if arguments.length == 0 
      system "ls", "/opt/homebrew-cask/Caskroom"
    else
      puts_columns Cask::CLI.nice_listing(Cask.installed)
    end
  end

  def self.help
    "lists installed casks"
  end
end
