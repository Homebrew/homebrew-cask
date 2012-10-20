require 'plist/parser'
require 'uri'

class Cask; end

require 'cask/cli'
require 'cask/cli/edit'
require 'cask/cli/install'
require 'cask/cli/uninstall'
require 'cask/cli/linkapps'
require 'cask/cli/list'
require 'cask/cli/search'
require 'cask/actions'
require 'cask/dsl'
require 'cask/exceptions'
require 'cask/installer'
require 'cask/scopes'
require 'plist/parser'

class Cask
  include Cask::Actions
  include Cask::DSL
  include Cask::Scopes

  def self.tapspath
    HOMEBREW_PREFIX.join "Library", "Taps"
  end

  def self.cellarpath
    HOMEBREW_CELLAR
  end

  def self.appdir
    @appdir ||= Pathname.new(File.expand_path("~/Applications"))
  end
  
  def self.init
    HOMEBREW_CACHE.mkpath unless HOMEBREW_CACHE.exist?
    appdir.mkpath unless appdir.exist?
  end

  def self.path(cask_title)
    cask_title = all.grep(/#{cask_title}$/).first unless cask_title =~ /\//
    tapspath.join(cask_title.sub("/", "/Casks/") + ".rb") unless cask_title.nil?
  end

  def self.load(cask_title)
    cask_path = path(cask_title)
    raise CaskUnavailableError, cask_title unless cask_path
    require cask_path
    const_get(cask_title.split('/').last.split('-').map(&:capitalize).join).new
  end

  def self.title
    self.name.gsub(/([a-z\d])([A-Z])/,'\1-\2').downcase
  end

  attr_reader :title
  def initialize(title=self.class.title)
    @title = title
  end

  def destination_path
    HOMEBREW_CELLAR.join(self.title).join(self.version)
  end

  def installed?
    return false unless destination_path.exist?
    destination_path.entries.any? do |f|
      f.basename.to_s =~ /.app$/
    end
  end

  def to_s
    @title
  end
end
