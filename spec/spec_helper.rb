require "pathname"
require "rspec/its"
require "rspec/wait"

if ENV["COVERAGE"]
  require "coveralls"
  Coveralls.wear_merged!
end

project_root = Pathname.new(File.expand_path("../..", __FILE__))

# add Homebrew to load path
$LOAD_PATH.unshift(File.expand_path("#{ENV['HOMEBREW_REPOSITORY']}/Library/Homebrew"))

require "global"
require "extend/pathname"

# add Homebrew-Cask to load path
$LOAD_PATH.push(project_root.join("lib").to_s)

# force some environment variables
ENV["HOMEBREW_NO_EMOJI"] = "1"
ENV["HOMEBREW_CASK_OPTS"] = nil

Dir["#{project_root}/spec/support/*.rb"].each(&method(:require))

# from Homebrew. Provides expects method.
require "mocha/api"

require "hbc"

class Hbc::TestCask < Hbc::Cask; end

TEST_TMPDIR = Dir.mktmpdir("homebrew_cask_tests")
at_exit do
  FileUtils.remove_entry(TEST_TMPDIR)
end

# override Homebrew locations
Hbc.homebrew_prefix = Pathname.new(TEST_TMPDIR).join("prefix")
Hbc.homebrew_repository = Hbc.homebrew_prefix
Hbc.binarydir = Hbc.homebrew_prefix.join("binarydir", "bin")
Hbc.appdir = Pathname.new(TEST_TMPDIR).join("appdir")

# Override Tap::TAP_DIRECTORY to use our test Tap directory.
class Tap
  send(:remove_const, :TAP_DIRECTORY)
  TAP_DIRECTORY = Hbc.homebrew_repository.join("Library", "Taps")
end

Hbc.default_tap = Tap.fetch("caskroom", "speccasks")
Hbc.default_tap.path.dirname.mkpath

# also jack in some test Casks
FileUtils.ln_s project_root.join("spec", "support"), Tap::TAP_DIRECTORY.join("caskroom", "homebrew-speccasks")

# create cache directory
Hbc.homebrew_cache = Pathname.new(TEST_TMPDIR).join("cache")
Hbc.cache.mkpath

# our own testy caskroom
Hbc.caskroom = Hbc.homebrew_prefix.join("TestCaskroom")

RSpec.configure do |config|
  config.order = :random
  config.include ShutupHelper
end
