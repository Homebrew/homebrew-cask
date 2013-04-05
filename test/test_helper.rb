require 'bundler/setup'


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

# making homebrew's cache dir allows us to actually download casks in tests
HOMEBREW_CACHE.mkpath

# must be called after testing_env so at_exit hooks are in proper order
require 'minitest/autorun'
require 'minitest-colorize'

# our baby
require 'cask'

# look for casks in testcasks by default
Cask.default_tap = 'phinze-testcasks'

class TestHelper
  # helper for test casks to reference local files easily
  def self.local_binary(name)
    path = File.expand_path(File.join(File.dirname(__FILE__), 'support', 'binaries', name))
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
