HOMEBREW_CACHE_CASKS = HOMEBREW_CACHE.join('Casks')

class Cask; end

require 'download_strategy'

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

  def self.init
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
        # sudo in system is rude.
        system '/usr/bin/sudo', '--', '/bin/mkdir', '-p', '--', caskroom
        system '/usr/bin/sudo', '--', '/usr/sbin/chown', '-R', '--', "#{current_user}:staff", caskroom.parent
      end
    end
  end

  def self.load(query)
    odebug 'Loading Cask definitions'
    cask = Cask::Source.for_query(query).load
    odumpcask cask
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
    caskroom_path.join(version)
  end

  def installed?
    destination_path.exist?
  end

  def to_s
    @title
  end
end
