require "pathname"
require "rspec/its"
require "rspec/wait"

if ENV["COVERAGE"]
  require "coveralls"
  Coveralls.wear_merged!
end

# just in case
raise "brew-cask: Ruby 2.0 or greater is required." if RUBY_VERSION.to_i < 2

project_root = Pathname(File.expand_path("../..", __FILE__))

Dir["#{project_root}/spec/support/*.rb"].each(&method(:require))

# TODO: removeme, this is transitional
include HomebrewTestingEnvironment

# force some environment variables
ENV["HOMEBREW_CASK_OPTS"] = nil

# from Homebrew. Provides expects method.
require "mocha/api"

# add homebrew-cask lib to load path
$LOAD_PATH.push(project_root.join("lib").to_s)

require "hbc"

class Hbc::TestCask < Hbc::Cask; end

# override Homebrew locations
Hbc.homebrew_prefix = Pathname.new(TEST_TMPDIR).join("prefix")
Hbc.homebrew_repository = Hbc.homebrew_prefix
Hbc.homebrew_tapspath = nil
Hbc.binarydir = Hbc.homebrew_prefix.join("binarydir", "bin")
Hbc.appdir = Pathname.new(TEST_TMPDIR).join("appdir")

# making homebrew's cache dir allows us to actually download Casks in tests
HOMEBREW_CACHE.mkpath
HOMEBREW_CACHE.join("Casks").mkpath

# Look for Casks in testcasks by default.  It is elsewhere required that
# the string "test" appear in the directory name.
Hbc.default_tap = project_root.join("spec", "support")

# our own testy caskroom
Hbc.caskroom = Hbc.homebrew_prefix.join("TestCaskroom")

RSpec.configure do |config|
  config.order = :random
  config.include ShutupHelper
end
