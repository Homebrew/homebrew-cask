class Cask::CLI::Search
  def self.run(*arguments)
    search_term, *rest = *arguments
    casks = {}
    puts_columns Cask::CLI.nice_listing(Cask.all_titles.grep(/#{search_term}/))
  end

  def self.help
    "searches all known casks"
  end
end
