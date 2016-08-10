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

# force some environment variables
ENV["HOMEBREW_NO_EMOJI"] = "1"
ENV["HOMEBREW_CASK_OPTS"] = nil

# from Homebrew. Provides expects method.
require "mocha/api"

# add homebrew to load path
homebrew_repo = `brew --repository`.chomp
$LOAD_PATH.unshift(File.expand_path("#{homebrew_repo}/Library/Homebrew"))

require "global"
require "extend/pathname"

# add homebrew-cask lib to load path
$LOAD_PATH.push(project_root.join("lib").to_s)

require "hbc"

class Hbc::TestCask < Hbc::Cask; end

TEST_TMPDIR = Dir.mktmpdir("homebrew_cask_tests")
at_exit do
  FileUtils.remove_entry(TEST_TMPDIR)
end

# override Homebrew locations
Hbc.homebrew_prefix = Pathname.new(TEST_TMPDIR).join("prefix")
Hbc.homebrew_repository = Hbc.homebrew_prefix
Hbc.homebrew_tapspath = nil
Hbc.binarydir = Hbc.homebrew_prefix.join("binarydir", "bin")
Hbc.appdir = Pathname.new(TEST_TMPDIR).join("appdir")

# Look for Casks in testcasks by default.  It is elsewhere required that
# the string "test" appear in the directory name.
Hbc.default_tap = project_root.join("spec", "support")

# create cache directory
Hbc.homebrew_cache = Pathname.new(TEST_TMPDIR).join("cache")
Hbc.cache.mkpath

# our own testy caskroom
Hbc.caskroom = Hbc.homebrew_prefix.join("TestCaskroom")

RSpec.configure do |config|
  config.order = :random
  config.include ShutupHelper
end
