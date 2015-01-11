HOMEBREW_CACHE_CASKS = HOMEBREW_CACHE.join('Casks')

class Hbc; end

require 'hbc/extend'
require 'hbc/artifact'
require 'hbc/audit'
require 'hbc/auditor'
require 'hbc/without_source'
require 'hbc/checkable'
require 'hbc/cli'
require 'hbc/cask_dependencies'
require 'hbc/caveats'
require 'hbc/container'
require 'hbc/download'
require 'hbc/download_strategy'
require 'hbc/dsl'
require 'hbc/exceptions'
require 'hbc/fetcher'
require 'hbc/hardware'
require 'hbc/installer'
require 'hbc/locations'
require 'hbc/macos'
require 'hbc/options'
require 'hbc/pkg'
require 'hbc/pretty_listing'
require 'hbc/qualified_token'
require 'hbc/scopes'
require 'hbc/source'
require 'hbc/staged'
require 'hbc/system_command'
require 'hbc/topological_hash'
require 'hbc/underscore_supporting_uri'
require 'hbc/url'
require 'hbc/url_checker'
require 'hbc/utils'
require 'hbc/version'

require 'vendor/plist'

class Hbc
  include Hbc::DSL
  include Hbc::Locations
  include Hbc::Scopes
  include Hbc::Options
  include Hbc::Utils

  # todo: restrict visibility of this to the DSL
  ::MacOS = Hbc::MacOS
  ::Hardware = Hbc::Hardware

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
          system '/usr/bin/sudo', '--', '/usr/sbin/chown', '-R', '--', "#{current_user}:staff", caskroom.parent.to_s
        end
      end
    end
  end

  def self.load(query)
    odebug 'Loading Cask definitions'
    cask = Hbc::Source.for_query(query).load
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

  attr_reader :token, :sourcefile_path
  def initialize(sourcefile_path=nil)
    @sourcefile_path = sourcefile_path
    @token = self.class.token
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
      raise Hbc::CaskError.new('Cannot create metadata path when timestamp is :latest')
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
      raise Hbc::CaskError.new('Cannot create metadata subdir when timestamp is :latest')
    end
    unless leaf.respond_to?(:length) and leaf.length > 0
      raise Hbc::CaskError.new('Cannot create metadata subdir for empty leaf')
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

  def requires_sudo?
    artifacts[:pkg].any?
  end

  def to_s
    @token
  end
end
