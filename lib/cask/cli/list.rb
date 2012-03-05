class Cask::CLI::List
  def self.run(*arguments)
    puts Cask.installed.map(&:to_s).join("\n")
  end

  def self.help
    "lists installed casks"
  end
end
