HOMEBREW_CACHE_CASKS = HOMEBREW_CACHE.join('Casks')

class Cask; end

require 'download_strategy'

# transitional, for set_up_taps (see below)
require 'cmd/update'
require 'rubygems'

require 'cask/artifact'
require 'cask/audit'
require 'cask/auditor'
require 'cask/without_source'
require 'cask/checkable'
require 'cask/cli'
require 'cask/caveats'
require 'cask/container'
require 'cask/download'
require 'cask/download_strategy'
require 'cask/dsl'
require 'cask/exceptions'
require 'cask/fetcher'
require 'cask/installer'
require 'cask/link_checker'
require 'cask/locations'
require 'cask/options'
require 'cask/pkg'
require 'cask/pretty_listing'
require 'cask/qualified_cask_name'
require 'cask/scopes'
require 'cask/source'
require 'cask/system_command'
require 'cask/underscore_supporting_uri'
require 'cask/url'
require 'cask/utils'
require 'cask/version'

require 'plist/parser'

class Cask
  include Cask::DSL
  include Cask::Locations
  include Cask::Scopes
  include Cask::Options
  include Cask::Utils

  def self.init
    set_up_taps
    odebug 'Creating directories'
    HOMEBREW_CACHE.mkpath unless HOMEBREW_CACHE.exist?
    HOMEBREW_CACHE_CASKS.mkpath unless HOMEBREW_CACHE_CASKS.exist?
    unless caskroom.exist?
      ohai "We need to make Caskroom for the first time at #{caskroom}"
      ohai "We'll set permissions properly so we won't need sudo in the future"
      current_user = Etc.getpwuid(Process.euid).name
      if caskroom.parent.writable?
        system '/bin/mkdir', caskroom
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
          system '/usr/bin/sudo', '--', '/usr/sbin/chown', '-R', '--', "#{current_user}:staff", caskroom.parent
        end
      end
    end
  end

  def self.set_up_taps
    odebug 'Initializing Taps'

    return true if Cask.default_tap.match(%r{test[^/]*\Z})

    # transitional: help with Homebrew's move of Tap dirs, Apr 2014
    minimum_homebrew_version = '0.9.5'
    unless Gem::Version.new(HOMEBREW_VERSION) >= Gem::Version.new(minimum_homebrew_version)
      raise CaskError.new <<-EOS.undent
        Minimum Homebrew version '#{minimum_homebrew_version}' required.
        (Homebrew version #{HOMEBREW_VERSION} was detected.)
        Try running "brew update".
      EOS
    end
    begin
      Homebrew.send(:rename_taps_dir_if_necessary)
    rescue StandardError
      opoo %q{Trouble with automatic Tap migration. You may need to run "brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup"}
    end

    # transitional: help with our own move to new GitHub project, May 2014
    legacy_user = 'phinze'
    new_user = 'caskroom'
    repo = 'cask'
    legacy_tap = HOMEBREW_LIBRARY/"Taps/#{legacy_user}/homebrew-#{repo}"
    new_tap = HOMEBREW_LIBRARY/"Taps/#{new_user}/homebrew-#{repo}"
    if legacy_tap.directory?
      ohai 'Removing legacy Tap'
      files = []
      legacy_tap.find_formula { |file| files << file }
      Homebrew.unlink_tap_formula(files)
      legacy_tap.rmtree
      legacy_tap.dirname.rmdir_if_possible
    end
    unless new_tap.directory?
      ohai 'Adding caskroom Tap'
      Homebrew.install_tap(new_user, repo)
    end
    Cask.reset_all_tapped_cask_dirs
  end

  def self.load(query)
    odebug 'Loading Cask definitions'
    cask = Cask::Source.for_query(query).load
    cask.dumpcask
    cask
  end

  def self.title
    self.name.gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').downcase
  end

  attr_reader :title
  def initialize(title=self.class.title)
    @title = title
  end

  def caskroom_path
    self.class.caskroom.join(title)
  end

  def destination_path
    caskroom_path.join(version.to_s)
  end

  def installed?
    destination_path.exist?
  end

  def to_s
    @title
  end
end
