module HomebrewTestingEnvironment
  def self.included(base)
    # force some environment variables
    ENV['HOMEBREW_NO_EMOJI']='1'

    # set some Homebrew constants used in our code
    base.const_set('HOMEBREW_BREW_FILE', '/usr/local/bin/brew')

    # add our homebrew fork to load path
    # todo: removeme, this is transitional
    $:.push(Pathname.new(File.expand_path(__FILE__+'/../../../lib/homebrew-fork/Library/Homebrew')))

    # require homebrew testing env
    with_disabled_at_exit do
      require 'test/testing_env'
    end
  end
end
