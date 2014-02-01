class Cask::CLI::Search
  def self.run(*arguments)
    render_results *search(*arguments)
  end

  def self.extract_regexp(string)
    %r{^/(.*)/$}.match(string) do |match|
      match.captures.first
    end
  end

  def self.search(*arguments)
    exact_match = nil
    partial_matches = []
    search_term = arguments.join(' ')
    search_regexp = extract_regexp arguments.first
    if search_regexp
      search_term = arguments.first
      partial_matches = Cask::CLI.nice_listing(Cask.all_titles).grep(/#{search_regexp}/i)
    else
      all_titles = Cask::CLI.nice_listing Cask.all_titles
      simplified_titles = all_titles.map { |t| t.gsub(/[^a-z]+/i, '') }
      simplified_search_term = search_term.gsub(/[^a-z]+/i, '')
      exact_match = simplified_titles.grep(/^#{simplified_search_term}$/i) { |t| all_titles[simplified_titles.index(t)] }.first
      partial_matches = simplified_titles.grep(/#{simplified_search_term}/i) { |t| all_titles[simplified_titles.index(t)] }
      partial_matches.delete(exact_match)
    end
    return exact_match, partial_matches, search_term
  end

  def self.render_results(exact_match, partial_matches, search_term)
    if ! exact_match and partial_matches.empty?
      puts "No cask found for \"#{search_term}\"."
      return
    end
    if exact_match
      ohai "Exact match"
      puts exact_match
    end
    unless partial_matches.empty?
      if extract_regexp search_term
        ohai "Regexp matches"
      else
        ohai "Partial matches"
      end
      puts_columns partial_matches
    end
  end

  def self.help
    "searches all known casks"
  end
end
