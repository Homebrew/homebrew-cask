module HomebrewTestingEnvironment
  def self.included(base)
    # force some environment variables
    ENV['HOMEBREW_NO_EMOJI']='1'

    # set some Homebrew constants used in our code
    base.const_set('HOMEBREW_BREW_FILE', '/usr/local/bin/brew')

    # require homebrew testing env
    with_disabled_at_exit do
      # todo: removeme, this is transitional
      require 'vendor/homebrew-fork/testing_env'
    end
  end
end
