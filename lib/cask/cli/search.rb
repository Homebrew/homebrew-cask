class Cask::CLI::Search
  def self.run(*arguments)
    search_term, *rest = *arguments
    casks = {}
    if search_term =~ %r{^/(.*)/$}
      search_regexp = $1
      casks = Cask.all_titles.grep(/#{search_regexp}/i)
    else
      all_titles = Cask.all_titles
      no_hyphens_titles = all_titles.map {|t|t.gsub('-', '')}
      no_hyphens_search_term = search_term.gsub('-', '')
      casks = no_hyphens_titles.grep(/#{no_hyphens_search_term}/i) {|t| all_titles[no_hyphens_titles.index(t)]}
    end
    unless casks.empty?
    	puts_columns Cask::CLI.nice_listing casks
    else
    	puts "No cask found for \"#{search_term}\"."
    end
  end

  def self.help
    "searches all known casks"
  end
end
