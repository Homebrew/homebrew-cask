require 'uri'

class Cask; end
class Cask::CLI; end

libdir = File.dirname(__FILE__)
rubyfiles = Dir[File.join(libdir, '**', '*.rb')]
rubyfiles.each do |file|
  require file.sub(/^#{libdir}\/(.*).rb$/, '\1')
end

class Cask
  include Cask::Actions
  include Cask::DSL
  include Cask::Scopes

  def self.tapspath
    HOMEBREW_PREFIX.join "Library", "Taps"
  end

  def self.caskroom
    HOMEBREW_PREFIX.join "Caskroom"
  end

  def self.appdir
    @appdir ||= Pathname.new(File.expand_path("~/Applications"))
  end

  def self.appdir=(_appdir)
    @appdir = _appdir
  end
  
  def self.init
    HOMEBREW_CACHE.mkpath unless HOMEBREW_CACHE.exist?
    caskroom.mkpath unless caskroom.exist?
    appdir.mkpath unless appdir.exist?
  end

  def self.path(cask_title)
    cask_title = all_titles.grep(/#{cask_title}$/).first unless cask_title =~ /\//
    tapspath.join(cask_title.sub("/", "/Casks/") + ".rb") unless cask_title.nil?
  end

  def self.load(cask_title)
    cask_path = path(cask_title)
    raise CaskUnavailableError, cask_title unless cask_path
    require cask_path
    const_get(cask_title.split('/').last.split('-').map(&:capitalize).join).new
  end

  def self.title
    self.name.gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').downcase
  end

  attr_reader :title
  def initialize(title=self.class.title)
    @title = title
  end

  def destination_path
    self.class.caskroom.join(self.title).join(self.version)
  end

  def installed?
    destination_path.exist?
  end

  def to_s
    @title
  end
end
