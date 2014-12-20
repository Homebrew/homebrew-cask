require 'download_strategy'
require 'checksum'
require 'version'

# Resource is the fundamental representation of an external resource. The
# primary formula download, along with other declared resources, are instances
# of this class.
class Resource

  attr_reader :checksum, :mirrors, :specs, :using
  attr_writer :url, :checksum, :version
  attr_accessor :download_strategy

  # Formula name must be set after the DSL, as we have no access to the
  # formula name before initialization of the formula
  attr_accessor :name, :owner

  def initialize name=nil, &block
    @name = name
    @url = nil
    @version = nil
    @mirrors = []
    @specs = {}
    @checksum = nil
    @using = nil
    instance_eval(&block) if block_given?
  end

  # Create a temporary directory then yield. When the block returns,
  # recursively delete the temporary directory.
  def mktemp(prefix=name)
    # I used /tmp rather than `mktemp -td` because that generates a directory
    # name with exotic characters like + in it, and these break badly written
    # scripts that don't escape strings before trying to regexp them :(

    # If the user has FileVault enabled, then we can't mv symlinks from the
    # /tmp volume to the other volume. So we let the user override the tmp
    # prefix if they need to.

    tempd = with_system_path { `mktemp -d #{HOMEBREW_TEMP}/#{prefix}-XXXXXX` }.chuzzle
    raise "Failed to create sandbox" if tempd.nil?
    prevd = pwd
    cd tempd
    yield
  ensure
    cd prevd if prevd
    ignore_interrupts{ rm_r tempd } if tempd
  end

  def downloader
    @downloader ||= download_strategy.new(download_name, self)
  end

  # Removes /s from resource names; this allows go package names
  # to be used as resource names without confusing software that
  # interacts with download_name, e.g. github.com/foo/bar
  def escaped_name
    name.gsub("/", '-')
  end

  def download_name
    name.nil? ? owner.name : "#{owner.name}--#{escaped_name}"
  end

  def cached_download
    downloader.cached_location
  end

  def clear_cache
    downloader.clear_cache
  end

  Partial = Struct.new(:resource, :files)

  def files(*files)
    Partial.new(self, files)
  end

  # For brew-fetch and others.
  def fetch
    # Ensure the cache exists
    HOMEBREW_CACHE.mkpath
    downloader.fetch
  rescue ErrorDuringExecution, CurlDownloadStrategyError => e
    raise RuntimeError.new
  else
    cached_download
  end

  def verify_download_integrity fn
    if fn.respond_to?(:file?) && fn.file?
      ohai "Verifying #{fn.basename} checksum" if ARGV.verbose?
      fn.verify_checksum(checksum)
    end
  rescue ChecksumMissingError
    opoo "Cannot verify integrity of #{fn.basename}"
    puts "A checksum was not provided for this resource"
    puts "For your reference the SHA1 is: #{fn.sha1}"
  end

  Checksum::TYPES.each do |type|
    define_method(type) { |val| @checksum = Checksum.new(type, val) }
  end

  def url val=nil, specs={}
    return @url if val.nil?
    @url = val
    @specs.merge!(specs)
    @using = @specs.delete(:using)
    @download_strategy = DownloadStrategyDetector.detect(url, using)
  end

  def version val=nil
    @version ||= detect_version(val)
  end

  def mirror val
    mirrors << val
  end

  private

  def detect_version(val)
    case val
    when nil     then Version.detect(url, specs)
    when String  then Version.new(val)
    when Version then val
    else
      raise TypeError, "version '#{val.inspect}' should be a string"
    end
  end
end
