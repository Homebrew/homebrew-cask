require 'uri'

HOMEBREW_CACHE_CASKS = HOMEBREW_CACHE.join('Casks')

class Cask; end

require 'cask/app_linker'
require 'cask/audit'
require 'cask/auditor'
require 'cask/checkable'
require 'cask/cli'
require 'cask/container'
require 'cask/download'
require 'cask/dsl'
require 'cask/exceptions'
require 'cask/fetcher'
require 'cask/installer'
require 'cask/link_checker'
require 'cask/pkg'
require 'cask/pkg_installer'
require 'cask/scopes'
require 'cask/system_command'

require 'plist/parser'

class Cask
  include Cask::DSL
  include Cask::Scopes

  def self.tapspath
    HOMEBREW_PREFIX.join "Library", "Taps"
  end

  def self.caskroom
    @@caskroom ||= Pathname('/opt/homebrew-cask/Caskroom')
  end

  def self.caskroom=(caskroom)
    @@caskroom = caskroom
  end

  def self.appdir
    @appdir ||= Pathname.new(File.expand_path("~/Applications"))
  end

  def self.appdir=(_appdir)
    @appdir = _appdir
  end

  def self.default_tap
    @default_tap ||= 'phinze-cask'
  end

  def self.default_tap=(_tap)
    @default_tap = _tap
  end

  def self._file_source?(requested_cask)
    File.file?(requested_cask)
  end

  def self._uri_source?(requested_cask)
    !!(requested_cask =~ URI.regexp)
  end

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
  end

  def self.path(cask_title)
    if cask_title.include?('/')
      cask_with_tap = cask_title
    else
      cask_with_tap = all_titles.detect { |tap_and_title|
        _, title = tap_and_title.split('/')
        title == cask_title
      }
    end

    if cask_with_tap
      tap, cask = cask_with_tap.split('/')
      tapspath.join(tap, 'Casks', "#{cask}.rb")
    else
      tapspath.join(default_tap, 'Casks', "#{cask_title}.rb")
    end
  end

  def self._load_from_tap(cask_title)
    if cask_title.include?('/')
      cask_with_tap = cask_title
    else
      cask_with_tap = all_titles.grep(/#{cask_title}$/).first
    end

    if cask_with_tap
      tap, cask = cask_with_tap.split('/')
      source = tapspath.join(tap, 'Casks', "#{cask}.rb")
    else
      source = tapspath.join(default_tap, 'Casks', "#{cask_title}.rb")
    end
    raise CaskUnavailableError, cask_title unless source.exist?
    _load_from_file(source)
  end

  def self._load_from_path(cask_path)
    _load_from_file(Pathname.new(File::expand_path(cask_path)))
  end

  def self._load_from_uri(url)
    HOMEBREW_CACHE_CASKS.mkpath
    path = HOMEBREW_CACHE_CASKS.join(File.basename(url))
    curl(url, '-o', path.to_s)
    _load_from_path(path.to_s)
  rescue ErrorDuringExecution
    raise CaskUnavailableError, url
  end

  def self._load_from_file(source)
    raise CaskUnavailableError, source unless source.exist?
    require source
    const_get(cask_class_name(source)).new
  end

  def self.load(requested_cask)
    if _uri_source?(requested_cask)
      _load_from_uri(requested_cask)
    elsif _file_source?(requested_cask)
      _load_from_path(requested_cask)
    else
      _load_from_tap(requested_cask)
    end
  end

  def self.cask_class_name(pathname)
    pathname.basename.to_s.sub(/\.rb/, '').split('-').map(&:capitalize).join
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

  def linkable_apps
    linkables.map { |app| Pathname.glob("#{destination_path}/**/#{app}").first }
  end

  def installers
    installables.map { |pkg| Pathname.glob("#{destination_path}/**/#{pkg}").first }
  end

  def to_s
    @title
  end
end
