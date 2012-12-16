require 'uri'

class Cask; end
class Cask::CLI; end

libdir = File.dirname(__FILE__)
rubyfiles = Dir[File.join(libdir, '**', '*.rb')]
rubyfiles.each do |file|
  require file.sub(/^#{libdir}\/(.*).rb$/, '\1')
end

class Cask
  include Cask::Link
  include Cask::DSL
  include Cask::Scopes

  def self.tapspath
    HOMEBREW_PREFIX.join "Library", "Taps"
  end

  def self.caskroom
    HOMEBREW_PREFIX.join "Caskroom"
  end

  
  def self.audit_ignore_edge; @ignore_edge || false; end
  def self.audit_ignore_edge=(i) @ignore_edge = i; end
  def self.appdir; @appdir ||= Pathname.new(File.expand_path("~/Applications")); end
  def self.appdir=(a) @appdir = a; end
  def self.prefdir; @prefdir ||= Pathname.new(File.expand_path("~/Library/PreferencePanes")); end
  def self.prefdir=(a) @prefdir = a; end
  
  def self.install_edge!; @spec = :edge end
  def self.install_edge?; @spec == :edge end
  def self.install_devel!; @spec = :devel end
  def self.install_devel?; @spec == :devel end
  def self.install_stable!; @spec = :stable end
  def self.install_stable?; @spec == :stable end

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
    # Have to gsub it twice to deal with edge cases such as:
    # BootXChange which should yield: boot-x-change, not boot-xchange
    self.name.gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').downcase
  end

  attr_reader :title, :homepage
  attr_reader :stable, :devel, :edge, :active_spec

  def initialize(title=self.class.title)
    set_instance_variable :homepage
    set_instance_variable :stable
    set_instance_variable :devel
    set_instance_variable :edge

    @title = title
    validate_variable :title
    
    @stable = @stable.spec if @stable.is_a? Cask::DSL::SpecBlock
    @active_spec = if @edge and Cask.install_edge? then @edge     # --edge
      elsif @devel and Cask.install_devel? then @devel            # --devel
      elsif @stable and Cask.install_stable? then @stable         # --stable
      elsif @stable.nil? and @edge then Cask.install_edge!; @edge # edge-only
      else Cask.install_stable!; @stable                          # default
      end
    
    raise "No url provided for cask #{title}" if @active_spec.url.nil?
    raise "No version provided for cask #{title}" if @active_spec.version.nil?
  end

  def url; @active_spec.url; end
  def version; @active_spec.version; end
  def specs; @active_spec.specs; end
  def mirrors; @active_spec.mirrors; end

  def destination_path
    self.class.caskroom.join(self.title).join(self.version)
  end

  def installed?
    destination_path.exist?
  end

  def path
    self.class.path @title
  end

  def info
    installation = if self.installed?
      "#{self.destination_path} (#{self.destination_path.abv})"
    else
      "Not installed"
    end
    
    version = if Cask.install_edge? then "latest (edge)"
      else self.version
      end
    
    <<-PURPOSE.undent
    #{self}: #{version}
    #{self.homepage}
    #{installation}
    #{self.github_info}
    PURPOSE
  end

  def github_info
    tap = self.title
    tap = self.class.all_titles.grep(/#{tap}$/).first unless tap =~ /\//
    tap, name = tap.split "/"
    user, repo = tap.split "-"
    "https://github.com/#{user}/#{repo}/commits/master/Casks/#{name}.rb"
  end

  def to_s
    @title
  end

private

  def validate_variable name
    v = instance_variable_get("@#{name}")
    raise "Invalid @#{name}" if v.to_s.empty? or v.to_s =~ /\s/
  end

  def set_instance_variable(type)
    return if instance_variable_defined? "@#{type}"
    class_value = self.class.send(type)
    instance_variable_set("@#{type}", class_value) if class_value
  end
end
