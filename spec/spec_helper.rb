
# just in case
if RUBY_VERSION.to_i < 2
  raise 'brew-cask: Ruby 2.0 or greater is required.'
end

project_root = Pathname(File.expand_path("../..", __FILE__))

Dir["#{project_root}/spec/support/**/*.rb"].each { |f| require f }

include HomebrewTestingEnvironment
# from Homebrew. Provides expects method.
require 'mocha/api'

# add homebrew-cask lib to load path
$:.push(project_root.join('lib').to_s)

require 'hbc'

# Look for Casks in testcasks by default.  It is elsewhere required that
# the string "test" appear in the directory name.
Hbc.default_tap = 'caskroom/homebrew-testcasks'

# our own testy caskroom
Hbc.caskroom = HOMEBREW_PREFIX.join('TestCaskroom')

RSpec.configure do |config|
  config.include ShutupHelper
  config.include TempEnvVarHelper
end
