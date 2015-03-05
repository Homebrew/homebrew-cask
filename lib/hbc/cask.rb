require 'hbc/dsl'

class Hbc::Cask
  include Hbc::DSL

  def self.token
    # todo removeme: prepending KlassPrefix is transitional as we move away from representing Casks as classes
    self.name.sub(/^KlassPrefix/,'').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').downcase
  end

  attr_reader :token, :sourcefile_path
  def initialize(sourcefile_path=nil)
    @sourcefile_path = sourcefile_path
    @token = self.class.token
  end

  def caskroom_path
    Hbc.caskroom.join(token)
  end

  # todo: move to staged.rb ?
  def staged_path
    cask_version = version ? version : :unknown
    caskroom_path.join(cask_version.to_s)
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
       :full_name,
       :homepage,
       :url,
       :appcast,
       :version,
       :license,
       :tags,
       :sha256,
       :artifacts,
       :caveats,
       :depends_on,
       :conflicts_with,
       :container,
       :gpg,
       :accessibility_access,
      ].each do |method|
        printable_method = method.to_s
        printable_method = "name" if printable_method == "full_name"
        odebug "Cask instance method '#{printable_method}':", self.send(method).to_yaml
      end
    end
  end
end
