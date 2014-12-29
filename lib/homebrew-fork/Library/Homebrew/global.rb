require 'extend/pathname'
require 'exceptions'
require 'utils'

def cache
  if ENV['HOMEBREW_CACHE']
    Pathname.new(ENV['HOMEBREW_CACHE'])
  else
    # we do this for historic reasons, however the cache *should* be the same
    # directory whichever user is used and whatever instance of brew is executed
    home_cache = Pathname.new("~/Library/Caches/Homebrew").expand_path
    if home_cache.directory? and home_cache.writable_real?
      home_cache
    else
      Pathname.new("/Library/Caches/Homebrew").extend Module.new {
        def mkpath
          unless exist?
            super
            chmod 0775
          end
        end
      }
    end
  end
end

HOMEBREW_CACHE = cache
undef cache

if not defined? HOMEBREW_BREW_FILE
  HOMEBREW_BREW_FILE = ENV['HOMEBREW_BREW_FILE'] || which('brew').to_s
end

HOMEBREW_PREFIX = Pathname.new(HOMEBREW_BREW_FILE).dirname.parent # Where we link under
HOMEBREW_REPOSITORY = Pathname.new(HOMEBREW_BREW_FILE).realpath.dirname.parent # Where .git is found
HOMEBREW_LIBRARY = HOMEBREW_REPOSITORY.join('Library')

HOMEBREW_TEMP = Pathname.new(ENV.fetch('HOMEBREW_TEMP', '/tmp'))

MACOS_POINT_RELEASE = `/usr/bin/sw_vers -productVersion`.chomp
MACOS_RELEASE = MACOS_POINT_RELEASE[/10\.\d+/]

HOMEBREW_USER_AGENT = "Homebrew-cask v0.51+ (Ruby #{RUBY_VERSION}-#{RUBY_PATCHLEVEL}; #{MACOS_RELEASE})"

HOMEBREW_CURL_ARGS = '-f#LA'
