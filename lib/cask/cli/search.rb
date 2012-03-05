class Cask::CLI::Search
  def self.run(*arguments)
    search_term, *rest = *arguments
    puts Cask.all.map(&:to_s).grep(/#{search_term}/).join("\n")
  end

  def self.help
    "searches all known casks"
  end
end
