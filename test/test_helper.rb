require 'bundler'
require 'bundler/setup'

# force some environment variables
ENV['HOMEBREW_NO_EMOJI']='1'

# set some Homebrew constants used in our code
HOMEBREW_BREW_FILE = '/usr/local/bin/brew'

# add homebrew-cask lib to load path
brew_cask_path = Pathname.new(File.expand_path(__FILE__+'/../../'))
casks_path = brew_cask_path.join('Casks')
lib_path = brew_cask_path.join('lib')

$:.push(lib_path)

# add homebrew to load path
homebrew_path = Pathname(`brew --prefix`.chomp)
homebrew_path = Pathname('/usr/local') unless homebrew_path.exist?
$:.push(homebrew_path.join('Library', 'Homebrew'))

# require homebrew testing env
require 'test/testing_env'

# todo temporary, copied from old Homebrew, this method is now moved inside a class
def shutup
  if ARGV.verbose?
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

# making homebrew's cache dir allows us to actually download Casks in tests
HOMEBREW_CACHE.mkpath
HOMEBREW_CACHE.join('Casks').mkpath

# must be called after testing_env so at_exit hooks are in proper order
require 'minitest/autorun'
# todo, re-enable minitest-colorize, broken under current test environment for unknown reasons
# require 'minitest-colorize'

# Force mocha to patch MiniTest since we have both loaded thanks to homebrew's testing_env
require 'mocha/api'
require 'mocha/integration/mini_test'
Mocha::Integration::MiniTest.activate

# our baby
require 'cask'

# Look for Casks in testcasks by default.  It is elsewhere required that
# the string "test" appear in the directory name.
Cask.default_tap = 'caskroom/homebrew-testcasks'

# our own testy caskroom
Cask.caskroom = HOMEBREW_PREFIX.join('TestCaskroom')

class TestHelper
  # helpers for test Casks to reference local files easily
  def self.local_binary_path(name)
    File.expand_path(File.join(File.dirname(__FILE__), 'support', 'binaries', name))
  end

  def self.local_binary_url(name)
    'file://' + local_binary_path(name)
  end

  def self.test_cask
    Cask.load('basic-cask')
  end

  def self.fake_fetcher
    Cask::FakeFetcher
  end

  def self.fake_response_for(*args)
    Cask::FakeFetcher.fake_response_for(*args)
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
    Cask::Installer.new(cask).tap do |i|
      shutup do
        i.download
        i.extract_primary_container
      end
    end
  end
end

require 'support/fake_fetcher'
require 'support/fake_dirs'
require 'support/fake_system_command'
require 'support/cleanup'
require 'support/never_sudo_system_command'
require 'tmpdir'
require 'tempfile'

# pretend like we installed the homebrew-cask tap
project_root = Pathname.new(File.expand_path("#{File.dirname(__FILE__)}/../"))
taps_dest = HOMEBREW_LIBRARY/"Taps/caskroom"

# create directories
FileUtils.mkdir_p taps_dest
HOMEBREW_PREFIX.join('bin').mkdir

FileUtils.ln_s project_root, taps_dest/"homebrew-cask"

# Common superclass for test Casks for when we need to filter them out
class TestCask < Cask; end

# jack in some optional utilities
FileUtils.ln_s '/usr/local/bin/cabextract', HOMEBREW_PREFIX.join('bin/cabextract')
FileUtils.ln_s '/usr/local/bin/unar', HOMEBREW_PREFIX.join('bin/unar')
FileUtils.ln_s '/usr/local/bin/lsar', HOMEBREW_PREFIX.join('bin/lsar')

# also jack in some test Casks
FileUtils.ln_s project_root/'test'/'support', taps_dest/"homebrew-testcasks"
