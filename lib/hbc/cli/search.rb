class Hbc::CLI::Search < Hbc::CLI::Base
  def self.run(*arguments)
    render_results *search(*arguments)
  end

  def self.extract_regexp(string)
    if %r{^/(.*)/$}.match(string) then
      $1
    else
      false
    end
  end

  def self.search(*arguments)
    exact_match = nil
    partial_matches = []
    search_term = arguments.join(' ')
    search_regexp = extract_regexp arguments.first
    if search_regexp
      search_term = arguments.first
      partial_matches = Hbc::CLI.nice_listing(Hbc.all_tokens).grep(/#{search_regexp}/i)
    else
      # suppressing search of the font Tap is a quick hack until behavior can be made configurable
      all_tokens = Hbc::CLI.nice_listing Hbc.all_tokens.reject{ |t| %r{^caskroom/homebrew-fonts/}.match(t)}
      simplified_tokens = all_tokens.map { |t| t.sub(/^.*\//, '').gsub(/[^a-z0-9]+/i, '') }
      simplified_search_term = search_term.sub(/\.rb$/i, '').gsub(/[^a-z0-9]+/i, '')
      exact_match = simplified_tokens.grep(/^#{simplified_search_term}$/i) { |t| all_tokens[simplified_tokens.index(t)] }.first
      partial_matches = simplified_tokens.grep(/#{simplified_search_term}/i) { |t| all_tokens[simplified_tokens.index(t)] }
      partial_matches.delete(exact_match)
    end
    return exact_match, partial_matches, search_term
  end

  def self.render_results(exact_match, partial_matches, search_term)
    if ! exact_match and partial_matches.empty?
      puts "No Cask found for \"#{search_term}\"."
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
    "searches all known Casks"
  end
end
