require 'download_strategy'
require 'plist/parser'
require 'uri'

HOME_APPS = Pathname.new(File.expand_path("~/Applications"))

class Cask; end

require 'cask/cli'
require 'cask/cli/install'
require 'cask/cli/linkapps'
require 'cask/cli/list'
require 'cask/cli/search'
require 'plist/parser'

class Cask
  def self.path
    HOMEBREW_PREFIX.join("Library", "Taps", "phinze-cask", "Casks")
  end

  def self.cellarpath
    HOMEBREW_CELLAR
  end

  def self.all
    cask_titles = path.entries.map(&:to_s).grep(/.rb$/).map { |p| p.to_s.split('.').first }
    cask_titles.map { |c| self.load(c) }
  end

  def self.init
    path.mkpath
    HOMEBREW_CACHE.mkpath
    HOME_APPS.mkpath
  end

  def self.homepage(homepage=nil)
    @homepage ||= homepage
  end
  def homepage; self.class.homepage; end

  def self.installed
    self.all.select(&:installed?)
  end

  def self.load(cask_title)
    require path.join(cask_title)
    const_get(cask_title.split('-').map(&:capitalize).join).new
  end

  def self.title
    self.name.gsub(/([a-z\d])([A-Z])/,'\1-\2').downcase
  end

  def self.url(url=nil)
    @url ||= URI.parse(url)
  end
  def url; self.class.url; end

  attr_reader :title
  def initialize(title=self.class.title)
    @title = title
  end

  def self.version(version=nil)
    @version ||= version
  end
  def version; self.class.version; end
  # def version
  #   Pathname.new(self.url.path.to_s).version
  # end

  VALID_SUFFIXES = ['dmg', 'pkg', 'app']

  def destination_path
    HOMEBREW_CELLAR.join(self.title).join(self.version)
  end

  def install
    downloader = CurlDownloadStrategy.new(self.url.to_s, self.title, self.version, {})
    downloaded_path = downloader.fetch

    FileUtils.mkdir_p destination_path

    _with_extracted_mountpoints(downloaded_path) do |mountpoint|
      puts `ditto #{mountpoint} #{destination_path}`
    end

    puts "Success! #{self} installed to #{destination_path}"
  end

  def linkapps
    destination_path.entries.select { |f| f.basename.to_s =~ /.app$/ }.each do |app|
      symlink_destination = HOME_APPS.join(app.basename)
      symlink_target = destination_path.join(app)
      if symlink_destination.directory? || symlink_destination.file?
        puts "#{symlink_destination} already exists and is not a symlink, not linking #{self}"
      elsif symlink_destination.symlink?
        puts "#{symlink_destination} exists but is symlink; removing and relinking"
        puts "#{symlink_destination} -> #{symlink_target}"
        symlink_destination.delete
        symlink_destination.make_symlink(symlink_target)
      else
        puts "#{symlink_destination} -> #{symlink_target}"
        symlink_destination.make_symlink(symlink_target)
      end
    end
  end

  def installed?
    return false unless destination_path.exist?
    destination_path.entries.any? do |f|
      f.basename.to_s =~ /.app$/
    end
  end

  def _with_extracted_mountpoints(path)
    if _dmg?(path)
      File.open(path) do |dmg|
        xml_str = `hdiutil mount -plist -nobrowse -readonly -noidme -mountrandom /tmp #{dmg.path}`
        hdiutil_info = Plist::parse_xml(xml_str)
        raise Exception.new("No disk entities returned by mount at #{dmg.path}") unless hdiutil_info.has_key?("system-entities")
        mounts = hdiutil_info["system-entities"].collect { |entity|
          entity["mount-point"]
        }.compact
        begin
          mounts.each do |mountpoint|
            yield Pathname.new(mountpoint)
          end
        ensure
          mounts.each do |mountpoint|
            `hdiutil eject #{mountpoint}`
          end
        end
      end
    elsif _zip?(path)
      destdir = "/tmp/brewcask_#{@title}_extracted"
      `mkdir -p #{destdir}`
      `unzip -d '#{destdir}' '#{path}'`
      begin
        yield destdir
      ensure
        `rm -rf '#{destdir}'`
      end
    else
      raise "uh oh, could not identify type of #{path}"
    end
  end

  def _dmg?(path)
    output = `hdiutil imageinfo #{path} 2>/dev/null`
    output != ''
  end

  def _zip?(path)
    output = `file -Izb #{path}`
    output.chomp == 'application/x-empty compressed-encoding=application/zip; charset=binary; charset=binary'
  end

  def to_s
    @title
  end
end
