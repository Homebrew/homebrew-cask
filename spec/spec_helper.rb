project_root = Pathname(File.expand_path("../..", __FILE__))

Dir["#{project_root}/spec/support/**/*.rb"].each { |f| require f }

include HomebrewTestingEnvironment

# add homebrew-cask lib to load path
$:.push(project_root.join('lib').to_s)

require 'cask'

# Look for Casks in testcasks by default.  It is elsewhere required that
# the string "test" appear in the directory name.
Cask.default_tap = 'caskroom/homebrew-testcasks'

# our own testy caskroom
Cask.caskroom = HOMEBREW_PREFIX.join('TestCaskroom')

RSpec.configure do |config|
  config.include ShutupHelper
  config.include TempEnvVarHelper
end
