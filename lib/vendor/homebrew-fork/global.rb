require 'vendor/homebrew-fork/monkeypatch_pathname'
require 'vendor/homebrew-fork/exceptions'
require 'vendor/homebrew-fork/utils'

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

HOMEBREW_USER_AGENT = "Homebrew-cask v0.51+ (Ruby #{RUBY_VERSION}-#{RUBY_PATCHLEVEL})"
HOMEBREW_CURL_ARGS = '-f#LA'
