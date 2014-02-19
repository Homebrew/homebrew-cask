class Cask::CLI::Search
  def self.run(*arguments)
    search_term = arguments.join
    cask_names = {}
    if arguments.first =~ %r{^/(.*)/$}
      search_regexp = $1
      cask_names = Cask::CLI.nice_listing(Cask.all_titles).grep(/#{search_regexp}/i)
    else
      # suppressing search of the font Tap is a quick hack until behavior can be made configurable
      all_titles = Cask::CLI.nice_listing Cask.all_titles.reject{ |t| %r{^caskroom-fonts/}.match(t)}
      simplified_titles = all_titles.map { |t| t.gsub(/[^a-z]+/i, '') }
      simplified_search_term = search_term.gsub(/[^a-z]+/i, '')
      cask_names = simplified_titles.grep(/#{simplified_search_term}/i) { |t| all_titles[simplified_titles.index(t)] }
    end
    unless cask_names.empty?
      puts_columns cask_names
    else
      puts "No cask found for \"#{search_term}\"."
    end
  end

  def self.help
    "searches all known casks"
  end
end
