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
require 'cask/locations'
require 'cask/options'
require 'cask/pkg'
require 'cask/pretty_listing'
require 'cask/qualified_token'
require 'cask/scopes'
require 'cask/source'
require 'cask/staged'
require 'cask/system_command'
require 'cask/underscore_supporting_uri'
require 'cask/url'
require 'cask/url_checker'
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
    # todo: Creating directories should be deferred until needed.
    #       Currently this fire and even asks for sudo password
    #       if a first-time user simply runs "brew cask --help".
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
          system '/usr/bin/sudo', '--', '/usr/sbin/chown', '-R', '--', "#{current_user}:staff", caskroom.parent
        end
      end
    end
  end

  def self.load(query)
    odebug 'Loading Cask definitions'
    cask = Cask::Source.for_query(query).load
    cask.dumpcask
    cask
  end

  def self.token
    # todo removeme: prepending KlassPrefix is transitional as we move away from representing Casks as classes
    self.name.sub(/^KlassPrefix/,'').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').downcase
  end

  def self.nowstamp_metadata_path(container_path)
    @timenow ||= Time.now.gmtime
    if container_path.respond_to?(:join)
      precision = 3
      timestamp = @timenow.strftime('%Y%m%d%H%M%S')
      fraction = ("%.#{precision}f" % (@timenow.to_f - @timenow.to_i))[1..-1]
      timestamp.concat(fraction)
      container_path.join(timestamp)
    end
  end

  attr_reader :token
  def initialize(token=self.class.token)
    @token = token
  end

  def caskroom_path
    self.class.caskroom.join(token)
  end

  # todo: move to staged.rb ?
  def staged_path
    cask_version = version ? version : :unknown
    caskroom_path.join(cask_version.to_s)
  end

  def metadata_master_container_path
    caskroom_path.join(self.class.metadata_subdir)
  end

  def metadata_versioned_container_path
    cask_version = version ? version : :unknown
    metadata_master_container_path.join(cask_version.to_s)
  end

  def metadata_path(timestamp=:latest, create=false)
    return nil unless metadata_versioned_container_path.respond_to?(:join)
    if create and timestamp == :latest
      raise CaskError.new('Cannot create metadata path when timestamp is :latest')
    end
    if timestamp == :latest
      path = Pathname.glob(metadata_versioned_container_path.join('*')).sort.last
    elsif timestamp == :now
      path = self.class.nowstamp_metadata_path(metadata_versioned_container_path)
    else
      path = metadata_versioned_container_path.join(timestamp)
    end
    if create
      odebug "Creating metadata directory #{path}"
      FileUtils.mkdir_p path
    end
    path
  end

  def metadata_subdir(leaf, timestamp=:latest, create=false)
    if create and timestamp == :latest
      raise CaskError.new('Cannot create metadata subdir when timestamp is :latest')
    end
    unless leaf.respond_to?(:length) and leaf.length > 0
      raise CaskError.new('Cannot create metadata subdir for empty leaf')
    end
    parent = metadata_path(timestamp, create)
    return nil unless parent.respond_to?(:join)
    subdir = parent.join(leaf)
    if create
      odebug "Creating metadata subdirectory #{subdir}"
      FileUtils.mkdir_p subdir
    end
    subdir
  end

  def installed?
    staged_path.exist?
  end

  def to_s
    @token
  end
end
