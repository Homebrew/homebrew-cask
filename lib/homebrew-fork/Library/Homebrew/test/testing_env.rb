# Require this file to build a testing environment.

$:.push(File.expand_path(__FILE__+'/../..'))

require 'extend/pathname'
require 'extend/ARGV'
require 'utils'
require 'tmpdir'

TEST_TMPDIR = Dir.mktmpdir("homebrew_tests")
at_exit { FileUtils.remove_entry(TEST_TMPDIR) }

# Constants normally defined in global.rb
HOMEBREW_PREFIX        = Pathname.new(TEST_TMPDIR).join("prefix")
HOMEBREW_REPOSITORY    = HOMEBREW_PREFIX
HOMEBREW_LIBRARY       = HOMEBREW_REPOSITORY+'Library'
HOMEBREW_CACHE         = HOMEBREW_PREFIX.parent+'cache'
HOMEBREW_USER_AGENT    = 'Homebrew'
HOMEBREW_CURL_ARGS     = '-fsLA'

MACOS_FULL_VERSION = `/usr/bin/sw_vers -productVersion`.chomp
MACOS_VERSION = ENV.fetch('MACOS_VERSION') { MACOS_FULL_VERSION[/10\.\d+/] }

# Test environment setup
# needed to keep rspec from attempting to write outside test dir
%w{ENV Formula}.each { |d| HOMEBREW_LIBRARY.join(d).mkpath }

# required for many tests
# eg: undefined method `verbose?' for []:Array
ARGV.extend(HomebrewForkArgvExtension)
