require 'uri'

class Cask; end
class Cask::CLI; end

libdir = File.dirname(__FILE__)
rubyfiles = Dir[File.join(libdir, '**', '*.rb')]
rubyfiles.each do |file|
  require file.sub(/^#{libdir}\/(.*).rb$/, '\1')
end

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

  def self._file_source?(cask_title)
    File.file?(cask_title)
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
      cask_with_tap = all_titles.grep(/#{cask_title}$/).first
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

  def self._load_from_path(cask_title)
    _load_from_file(Pathname.new(File::expand_path(cask_title)))
  end

  def self._load_from_file(source)
    raise CaskUnavailableError, source unless source.exist?
    require source
    const_get(cask_class_name(source)).new
  end

  def self.load(cask_title)
    if _file_source?(cask_title)
      _load_from_path(cask_title)
    else
      _load_from_tap(cask_title)
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
