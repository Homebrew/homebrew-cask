require 'bundler/setup'
require 'pp'

# add cask lib to load path
brew_cask_path = Pathname.new(File.expand_path(__FILE__+'/../../'))
casks_path = brew_cask_path.join('casks')
lib_path = brew_cask_path.join('lib')

$:.push(lib_path)

# add homebrew to load path
homebrew_path = Pathname(`brew --prefix`.chomp)
$:.push(homebrew_path.join('Library', 'Homebrew'))

# require homebrew testing env
require 'test/testing_env'

# add in HOMEBREW_LIBRARY constant, which is for some reason not set in testing_env
HOMEBREW_LIBRARY = HOMEBREW_REPOSITORY/"Library"

# making homebrew's cache dir allows us to actually download casks in tests
HOMEBREW_CACHE.mkpath

# must be called after testing_env so at_exit hooks are in proper order
require 'minitest/spec'
require 'minitest/autorun'
require 'purdytest'

# our baby
require 'cask'

class TestHelper
  # helper for test casks to reference local files easily
  def self.local_binary(name)
    path = File.join(File.dirname(__FILE__), 'support', 'binaries', name)
    "file://#{path}"
  end

  def self.test_cask
    Cask.load('test-cask')
  end

  def self.fake_fetcher
    Cask::FakeFetcher
  end

  def self.fake_response_for(*args)
    Cask::FakeFetcher.fake_response_for(*args)
  end
end

require 'support/fake_fetcher'
require 'support/fake_appdir'

# pretend like we installed the cask tap
project_root = Pathname.new(File.expand_path("#{File.dirname(__FILE__)}/../"))
taps_dest = HOMEBREW_LIBRARY/"Taps"

taps_dest.mkdir

FileUtils.ln_s project_root, taps_dest/"phinze-cask"

# also jack in some test casks
FileUtils.ln_s project_root/'test'/'support', taps_dest/"phinze-testcasks"
