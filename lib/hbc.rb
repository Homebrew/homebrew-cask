HOMEBREW_CACHE_CASKS = HOMEBREW_CACHE.join('Casks')

module Hbc; end

require 'hbc/extend'
require 'hbc/artifact'
require 'hbc/audit'
require 'hbc/auditor'
require 'hbc/cask'
require 'hbc/without_source'
require 'hbc/checkable'
require 'hbc/cli'
require 'hbc/cask_dependencies'
require 'hbc/caveats'
require 'hbc/container'
require 'hbc/download'
require 'hbc/download_strategy'
require 'hbc/exceptions'
require 'hbc/fetcher'
require 'hbc/hardware'
require 'hbc/installer'
require 'hbc/locations'
require 'hbc/macos'
require 'hbc/options'
require 'hbc/pkg'
require 'hbc/pretty_listing'
require 'hbc/qualified_token'
require 'hbc/scopes'
require 'hbc/source'
require 'hbc/staged'
require 'hbc/system_command'
require 'hbc/topological_hash'
require 'hbc/underscore_supporting_uri'
require 'hbc/url'
require 'hbc/url_checker'
require 'hbc/utils'
require 'hbc/verify'
require 'hbc/version'

require 'vendor/plist'

module Hbc
  include Hbc::Locations
  include Hbc::Scopes
  include Hbc::Options
  include Hbc::Utils

  # todo: restrict visibility of this to the DSL
  ::MacOS = Hbc::MacOS
  ::Hardware = Hbc::Hardware

  def self.init
    odebug 'Creating directories'
    HOMEBREW_CACHE.mkpath unless HOMEBREW_CACHE.exist?
    HOMEBREW_CACHE_CASKS.mkpath unless HOMEBREW_CACHE_CASKS.exist?
    unless caskroom.exist?
      ohai "We need to make Caskroom for the first time at #{caskroom}"
      ohai "We'll set permissions properly so we won't need sudo in the future"
      current_user = Etc.getpwuid(Process.euid).name
      if caskroom.parent.writable?
        system '/bin/mkdir', '--', caskroom
      else
        toplevel_dir = caskroom
        toplevel_dir = toplevel_dir.parent until toplevel_dir.parent.root?
        unless toplevel_dir.directory?
          # If a toplevel dir such as '/opt' must be created, enforce standard permissions.
          # sudo in system is rude.
          system '/usr/bin/sudo', '--', '/bin/mkdir', '--',         toplevel_dir
          system '/usr/bin/sudo', '--', '/bin/chmod', '--', '0775', toplevel_dir
        end
        # sudo in system is rude.
        system '/usr/bin/sudo', '--', '/bin/mkdir', '-p', '--', caskroom
        unless caskroom.parent == toplevel_dir
          system '/usr/bin/sudo', '--', '/usr/sbin/chown', '-R', '--', "#{current_user}:staff", caskroom.parent.to_s
        end
      end
    end
  end

  def self.load(query)
    odebug 'Loading Cask definitions'
    cask = Hbc::Source.for_query(query).load
    cask.dumpcask
    cask
  end
end
