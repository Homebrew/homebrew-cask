require 'bundler/setup'
require 'pp'

# add cask lib to load path
brew_cask_path = Pathname.new(File.expand_path(__FILE__+'/../../'))
casks_path = brew_cask_path.join('casks')
lib_path = brew_cask_path.join('lib')

$:.push(lib_path)

# add vendored homebrew to load path
homebrew_path = brew_cask_path.join('test', 'support', 'homebrew')
$:.push(homebrew_path.join('Library', 'Homebrew'))

# require homebrew testing env
require 'test/testing_env'

# add in HOMEBREW_LIBRARY constant, which is for some reason not set in testing_env
HOMEBREW_LIBRARY = HOMEBREW_REPOSITORY/"Library"


# must be called after testing_env so at_exit hooks are in proper order
require 'minitest/spec'
require 'minitest/autorun'
require 'purdytest'

# sometimes you need to mock
require 'mocha'

# our baby
require 'cask'

# "install" brew-cask into homebrew testing env
require 'cmd/tap'
shutup do 
  Homebrew.install_tap 'phinze', 'cask'
end
