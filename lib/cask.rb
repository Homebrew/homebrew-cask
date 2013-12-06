require 'uri'

HOMEBREW_CACHE_CASKS = HOMEBREW_CACHE.join('Casks')

class Cask; end

require 'cask/artifact'
require 'cask/audit'
require 'cask/auditor'
require 'cask/without_source'
require 'cask/checkable'
require 'cask/cli'
require 'cask/container'
require 'cask/download'
require 'cask/dsl'
require 'cask/exceptions'
require 'cask/fetcher'
require 'cask/installer'
require 'cask/link_checker'
require 'cask/locations'
require 'cask/pkg'
require 'cask/pretty_listing'
require 'cask/scopes'
require 'cask/source'
require 'cask/system_command'
require 'cask/underscore_supporting_uri'

require 'plist/parser'

class Cask
  include Cask::DSL
  include Cask::Locations
  include Cask::Scopes

  def self.init
    HOMEBREW_CACHE.mkpath unless HOMEBREW_CACHE.exist?
    unless caskroom.exist?
      ohai "We need to make Caskroom for the first time at #{caskroom}"
      ohai "We'll set permissions properly so we won't need sudo in the future"
      current_user = ENV['USER']
      sudo = 'sudo' unless caskroom.parent.writable?
      system "#{sudo} mkdir -p #{caskroom}"
      system "#{sudo} chown -R #{current_user}:staff #{caskroom.parent}"
    end
    appdir.mkpath unless appdir.exist?
    qlplugindir.mkpath unless qlplugindir.exist?
  end

  def self.load(query)
    Cask::Source.for_query(query).load
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
