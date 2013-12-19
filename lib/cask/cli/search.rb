class Cask::CLI::Search
  def self.run(*arguments)
    search_term, *rest = *arguments
    casks = {}
    casks = Cask::CLI.nice_listing(Cask.all_titles.grep(/#{search_term}/))
    unless casks.empty?
    	puts_columns casks
    else
    	puts "No cask found for: #{search_term}"
    end
  end

  def self.help
    "searches all known casks"
  end
end
