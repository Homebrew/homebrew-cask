require 'forwardable'

require 'hbc/dsl'

class Hbc::Cask
  extend Forwardable

  attr_reader :token, :sourcefile_path
  def initialize(token, sourcefile_path: nil, dsl: nil, &block)
    @token = token
    @sourcefile_path = sourcefile_path
    @dsl = dsl || Hbc::DSL.new(@token)
    @dsl.instance_eval(&block) if block_given?
  end

  Hbc::DSL::DSL_METHODS.each do |method_name|
    define_method(method_name) { @dsl.send(method_name) }
  end

  METADATA_SUBDIR = '.metadata'

  def metadata_master_container_path
    caskroom_path.join(METADATA_SUBDIR)
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
      path = Hbc::Utils.nowstamp_metadata_path(metadata_versioned_container_path)
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

  def to_s
    @token
  end

  def dumpcask
    if Hbc.respond_to?(:debug) and Hbc.debug
      odebug "Cask instance dumps in YAML:"
      odebug "Cask instance toplevel:", self.to_yaml
      [
       :name,
       :homepage,
       :url,
       :appcast,
       :version,
       :license,
       :sha256,
       :artifacts,
       :caveats,
       :depends_on,
       :conflicts_with,
       :container,
       :gpg,
       :accessibility_access,
       :auto_updates
      ].each do |method|
        odebug "Cask instance method '#{method}':", self.send(method).to_yaml
      end
    end
  end
end
