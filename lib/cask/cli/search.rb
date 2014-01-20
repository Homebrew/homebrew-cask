class Cask::CLI::Search
  def self.run(*arguments)
    search_term, *rest = *arguments
    cask_names = {}
    if search_term =~ %r{^/(.*)/$}
      search_regexp = $1
      cask_names = Cask.all_titles.grep(/#{search_regexp}/i)
    else
      all_titles = Cask.all_titles
      simplified_titles = all_titles.map { |t| t.gsub('-', '') }
      simplified_search_term = search_term.gsub('-', '')
      cask_names = simplified_titles.grep(/#{simplified_search_term}/i) { |t| all_titles[simplified_titles.index(t)] }
    end
    unless cask_names.empty?
    	puts_columns Cask::CLI.nice_listing cask_names
    else
    	puts "No cask found for \"#{search_term}\"."
    end
  end

  def self.help
    "searches all known casks"
  end
end
