require 'download_strategy'
require 'formula_support'
require 'plist/parser'
require 'uri'

HOME_APPS = Pathname.new(File.expand_path("~/Applications"))

class Cask; end

require 'cask/cli'
require 'cask/cli/edit'
require 'cask/cli/install'
require 'cask/cli/linkapps'
require 'cask/cli/list'
require 'cask/cli/search'
require 'cask/exceptions'
require 'plist/parser'

class Cask
  def self.tapspath
    HOMEBREW_PREFIX.join "Library", "Taps"
  end

  def self.cellarpath
    HOMEBREW_CELLAR
  end

  def self.all
    cask_titles = Dir[tapspath.join("*", "Casks", "*.rb")]
    cask_titles.map { |c|
      # => "/usr/local/Library/Taps/example-tap/Casks/example.rb"
      c.sub! /\.rb$/, ''
      # => ".../example"
      c = c.split("/").last 3
      # => ["example-tap", "Casks", "example"]
      c.delete_at 1
      # => ["example-tap", "example"]
      c = c.join "/"
      # => "example-tap/example"
      self.load c
      c
    }
  end
  
  def self.nice_listing(cask_list)
    casks = {}
    cask_list.each { |c|
      repo, name = c.split "/"
      casks[name] ||= []
      casks[name].push repo
    }
    list = []
    casks.each { |name,repos|
      if repos.length == 1
        list.push name
      else
        repos.each { |r| list.push [r,name].join "/" }
      end
    }
    list.sort
  end

  def self.init
    HOMEBREW_CACHE.mkpath
    HOME_APPS.mkpath
  end

  def self.homepage(homepage=nil)
    @homepage ||= homepage
  end
  def homepage; self.class.homepage; end

  def self.installed
    self.all.select { |c| load(c).installed? }
  end
  
  def self.path(cask_title)
    cask_title = all.grep(/#{cask_title}$/).first unless cask_title =~ /\//
    tapspath.join(cask_title.sub("/", "/Casks/") + ".rb") unless cask_title.nil?
  end

  def self.load(cask_title)
    require path cask_title
    const_get(cask_title.split('/').last.split('-').map(&:capitalize).join).new
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
    downloader = CurlDownloadStrategy.new(self.title, SoftwareSpec.new(self.url.to_s, self.version))
    downloaded_path = downloader.fetch

    FileUtils.mkdir_p destination_path

    _with_extracted_mountpoints(downloaded_path) do |mountpoint|
      puts `ditto '#{mountpoint}' '#{destination_path}'`
    end

    ohai "Success! #{self} installed to #{destination_path}"
  end

  def linkapps
    destination_path.entries.select { |f| f.basename.to_s =~ /.app$/ }.each do |app|
      symlink_destination = HOME_APPS.join(app.basename)
      symlink_target = destination_path.join(app)
      if symlink_destination.symlink?
        puts "#{symlink_destination} exists but is symlink; removing and relinking"
        puts "#{symlink_destination} -> #{symlink_target}"
        symlink_destination.delete
        symlink_destination.make_symlink(symlink_target)
      elsif symlink_destination.directory? || symlink_destination.file?
        puts "#{symlink_destination} already exists and is not a symlink, not linking #{self}"
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
        xml_str = `hdiutil mount -plist -nobrowse -readonly -noidme -mountrandom /tmp '#{dmg.path}'`
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
            `hdiutil eject '#{mountpoint}'`
          end
        end
      end
    elsif _zip?(path)
      destdir = "/tmp/brewcask_#{@title}_extracted"
      `mkdir -p '#{destdir}'`
      `unzip -d '#{destdir}' '#{path}'`
      begin
        yield destdir
      ensure
        `rm -rf '#{destdir}'`
      end
    elsif _tar_bzip?(path)
      destdir = "/tmp/brewcask_#{@title}_extracted"
      `mkdir -p '#{destdir}'`
      `tar jxf '#{path}' -C '#{destdir}'`
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
    output = `hdiutil imageinfo '#{path}' 2>/dev/null`
    output != ''
  end

  def _zip?(path)
    output = `file -Izb '#{path}'`
    output.chomp.include? 'compressed-encoding=application/zip; charset=binary; charset=binary'
  end

  def _tar_bzip?(path)
    output = `file -Izb '#{path}'`
    output.chomp == 'application/x-tar; charset=binary compressed-encoding=application/x-bzip2; charset=binary; charset=binary'
  end

  def to_s
    @title
  end
end
