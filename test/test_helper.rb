require 'bundler'
require 'bundler/setup'
require 'pathname'

if ENV['COVERAGE']
  require 'coveralls'
  Coveralls.wear_merged!
end

# just in case
if RUBY_VERSION.to_i < 2
  raise 'brew-cask: Ruby 2.0 or greater is required.'
end

# add homebrew-cask lib to load path
brew_cask_path = Pathname.new(File.expand_path(__FILE__+'/../../'))
casks_path = brew_cask_path.join('Casks')
lib_path = brew_cask_path.join('lib')
$:.push(lib_path)

# todo: removeme, this is transitional
require 'vendor/homebrew-fork/testing_env'

# force some environment variables
ENV['HOMEBREW_NO_EMOJI'] = '1'
ENV['HOMEBREW_CASK_OPTS'] = nil

# todo temporary, copied from old Homebrew, this method is now moved inside a class
def shutup
  if ENV.has_key?('VERBOSE_TESTS')
    yield
  else
    begin
      tmperr = $stderr.clone
      tmpout = $stdout.clone
      $stderr.reopen '/dev/null', 'w'
      $stdout.reopen '/dev/null', 'w'
      yield
    ensure
      $stderr.reopen tmperr
      $stdout.reopen tmpout
    end
  end
end

def sudo(*args)
  %w[/usr/bin/sudo -E --] + Array(args).flatten
end

# making homebrew's cache dir allows us to actually download Casks in tests
HOMEBREW_CACHE.mkpath
HOMEBREW_CACHE.join('Casks').mkpath

# must be called after testing_env so at_exit hooks are in proper order
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use! Minitest::Reporters::DefaultReporter.new(color: true)

# Force mocha to patch MiniTest since we have both loaded thanks to homebrew's testing_env
require 'mocha/api'
require 'mocha/integration/mini_test'
Mocha::Integration::MiniTest.activate

# our baby
require 'hbc'

# override Homebrew locations
Hbc.homebrew_prefix = Pathname.new(TEST_TMPDIR).join('prefix')
Hbc.homebrew_repository = Hbc.homebrew_prefix
Hbc.homebrew_tapspath = nil

# Look for Casks in testcasks by default.  It is elsewhere required that
# the string "test" appear in the directory name.
Hbc.default_tap = 'caskroom/homebrew-testcasks'

# our own testy caskroom
Hbc.caskroom = Hbc.homebrew_prefix.join('TestCaskroom')

class TestHelper
  # helpers for test Casks to reference local files easily
  def self.local_binary_path(name)
    File.expand_path(File.join(File.dirname(__FILE__), 'support', 'binaries', name))
  end

  def self.local_binary_url(name)
    'file://' + local_binary_path(name)
  end

  def self.test_cask
    @test_cask ||= Hbc.load('basic-cask')
  end

  def self.fake_fetcher
    Hbc::FakeFetcher
  end

  def self.fake_response_for(*args)
    Hbc::FakeFetcher.fake_response_for(*args)
  end

  def self.must_output(test, lambda, expected)
    out, err = test.capture_subprocess_io do
      lambda.call
    end

    if expected.is_a? Regexp
      (out+err).chomp.must_match expected
    else
      (out+err).chomp.must_equal expected.gsub(/^ */, '')
    end
  end

  def self.valid_alias?(candidate)
    return false unless candidate.symlink?
    candidate.readlink.exist?
  end

  def self.install_without_artifacts(cask)
    Hbc::Installer.new(cask).tap do |i|
      shutup do
        i.download
        i.extract_primary_container
      end
    end
  end
end

# Extend MiniTest API with support for RSpec-style shared examples
require 'support/shared_examples'
require 'support/shared_examples/staged.rb'

require 'support/fake_fetcher'
require 'support/fake_dirs'
require 'support/fake_system_command'
require 'support/cleanup'
require 'support/never_sudo_system_command'
require 'tmpdir'
require 'tempfile'

# pretend like we installed the homebrew-cask tap
project_root = Pathname.new(File.expand_path("#{File.dirname(__FILE__)}/../"))
taps_dest = Hbc.homebrew_prefix.join(*%w{Library Taps caskroom})

# create directories
FileUtils.mkdir_p taps_dest
FileUtils.mkdir_p Hbc.homebrew_prefix.join('bin')

FileUtils.ln_s project_root, taps_dest.join('homebrew-cask')

# Common superclass for test Casks for when we need to filter them out
module Hbc
  class TestCask < Cask; end
end

# jack in some optional utilities
FileUtils.ln_s '/usr/local/bin/cabextract', Hbc.homebrew_prefix.join('bin/cabextract')
FileUtils.ln_s '/usr/local/bin/unar', Hbc.homebrew_prefix.join('bin/unar')
FileUtils.ln_s '/usr/local/bin/lsar', Hbc.homebrew_prefix.join('bin/lsar')

# also jack in some test Casks
FileUtils.ln_s project_root.join('test', 'support'), taps_dest.join('homebrew-testcasks')
