module HomebrewTestingEnvironment
  def self.included(base)
    # force some environment variables
    ENV['HOMEBREW_NO_EMOJI']='1'

    # set some Homebrew constants used in our code
    base.const_set('HOMEBREW_BREW_FILE', '/usr/local/bin/brew')

    # add homebrew to load path
    homebrew_path = Pathname(`brew --prefix`.chomp)
    homebrew_path = Pathname('/usr/local') unless homebrew_path.exist?
    $:.push(homebrew_path.join('Library', 'Homebrew'))

    # require homebrew testing env
    with_disabled_at_exit do
      require 'test/testing_env'
    end
  end
end
