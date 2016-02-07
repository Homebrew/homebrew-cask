require 'set'

class Hbc::DSL; end

require 'hbc/dsl/appcast'
require 'hbc/dsl/base'
require 'hbc/dsl/conflicts_with'
require 'hbc/dsl/container'
require 'hbc/dsl/depends_on'
require 'hbc/dsl/gpg'
require 'hbc/dsl/installer'
require 'hbc/dsl/license'
require 'hbc/dsl/postflight'
require 'hbc/dsl/preflight'
require 'hbc/dsl/uninstall_postflight'
require 'hbc/dsl/uninstall_preflight'
require 'hbc/dsl/version'

class Hbc::DSL
  ORDINARY_ARTIFACT_TYPES = [
    :app,
    :artifact,
    :audio_unit_plugin,
    :binary,
    :colorpicker,
    :font,
    :input_method,
    :internet_plugin,
    :pkg,
    :prefpane,
    :qlplugin,
    :screen_saver,
    :service,
    :stage_only,
    :suite,
    :vst_plugin
  ]

  ACTIVATABLE_ARTIFACT_TYPES = [:installer, *ORDINARY_ARTIFACT_TYPES] - [:stage_only]

  SPECIAL_ARTIFACT_TYPES = [
    :uninstall,
    :zap,
  ]

  ARTIFACT_BLOCK_TYPES = [
    :preflight,
    :postflight,
    :uninstall_preflight,
    :uninstall_postflight,
  ]

  DSL_METHODS = Set.new [
    :accessibility_access,
    :appcast,
    :artifacts,
    :auto_updates,
    :caskroom_path,
    :caveats,
    :conflicts_with,
    :container,
    :depends_on,
    :gpg,
    :homepage,
    :license,
    :name,
    :sha256,
    :staged_path,
    :url,
    :version,
    *ORDINARY_ARTIFACT_TYPES,
    *ACTIVATABLE_ARTIFACT_TYPES,
    *SPECIAL_ARTIFACT_TYPES,
    *ARTIFACT_BLOCK_TYPES
  ]

  attr_reader :token
  def initialize(token)
    @token = token
  end

  def name(*args)
    @name ||= []
    return @name if args.empty?
    @name.concat(args.flatten)
  end

  def homepage(homepage=nil)
    if @homepage and !homepage.nil?
      raise Hbc::CaskInvalidError.new(self.token, "'homepage' stanza may only appear once")
    end
    @homepage ||= homepage
  end

  def url(*args)
    return @url if args.empty?
    if @url and !args.empty?
      raise Hbc::CaskInvalidError.new(self.token, "'url' stanza may only appear once")
    end
    @url ||= begin
      Hbc::URL.new(*args)
    rescue StandardError => e
      raise Hbc::CaskInvalidError.new(self.token, "'url' stanza failed with: #{e}")
    end
  end

  def appcast(*args)
    return @appcast if args.empty?
    if @appcast and !args.empty?
      raise Hbc::CaskInvalidError.new(self.token, "'appcast' stanza may only appear once")
    end
    @appcast ||= begin
      Hbc::DSL::Appcast.new(*args) unless args.empty?
    rescue StandardError => e
      raise Hbc::CaskInvalidError.new(self.token, e)
    end
  end

  def gpg(*args)
    return @gpg if args.empty?
    if @gpg and !args.empty?
      raise Hbc::CaskInvalidError.new(self.token, "'gpg' stanza may only appear once")
    end
    @gpg ||= begin
      Hbc::DSL::Gpg.new(*args) unless args.empty?
    rescue StandardError => e
      raise Hbc::CaskInvalidError.new(self.token, e)
    end
  end

  def container(*args)
    return @container if args.empty?
    if @container and !args.empty?
      # todo: remove this constraint, and instead merge multiple container stanzas
      raise Hbc::CaskInvalidError.new(self.token, "'container' stanza may only appear once")
    end
    @container ||= begin
      Hbc::DSL::Container.new(*args) unless args.empty?
    rescue StandardError => e
      raise Hbc::CaskInvalidError.new(self.token, e)
    end
    # todo: remove this backward-compatibility section after removing nested_container
    if @container and @container.nested
      artifacts[:nested_container] << @container.nested
    end
    @container
  end

  SYMBOLIC_VERSIONS = Set.new [
    :latest,
  ]

  def version(arg=nil)
    if arg.nil?
      return @version
    elsif @version
      raise Hbc::CaskInvalidError.new(self.token, "'version' stanza may only appear once")
    elsif !arg.is_a?(String) and !SYMBOLIC_VERSIONS.include?(arg)
      raise Hbc::CaskInvalidError.new(self.token, "invalid 'version' value: '#{arg.inspect}'")
    end
    @version ||= Hbc::DSL::Version.new(arg)
  end

  SYMBOLIC_SHA256S = Set.new [
    :no_check,
  ]

  def sha256(arg=nil)
    if arg.nil?
      return @sha256
    elsif @sha256
      raise Hbc::CaskInvalidError.new(self.token, "'sha256' stanza may only appear once")
    elsif !arg.is_a?(String) and !SYMBOLIC_SHA256S.include?(arg)
      raise Hbc::CaskInvalidError.new(self.token, "invalid 'sha256' value: '#{arg.inspect}'")
    end
    @sha256 ||= arg
  end

  def license(arg=nil)
    return @license if arg.nil?
    if @license and !arg.nil?
      raise Hbc::CaskInvalidError.new(self.token, "'license' stanza may only appear once")
    end
    @license ||= begin
      Hbc::DSL::License.new(arg) unless arg.nil?
    rescue StandardError => e
      raise Hbc::CaskInvalidError.new(self.token, e)
    end
  end

  # depends_on uses a load method so that multiple stanzas can be merged
  def depends_on(*args)
    return @depends_on if args.empty?
    @depends_on ||= Hbc::DSL::DependsOn.new()
    begin
      @depends_on.load(*args) unless args.empty?
    rescue RuntimeError => e
      raise Hbc::CaskInvalidError.new(self.token, e)
    end
    @depends_on
  end

  def conflicts_with(*args)
    if @conflicts_with and !args.empty?
      # todo: remove this constraint, and instead merge multiple conflicts_with stanzas
      raise Hbc::CaskInvalidError.new(self.token, "'conflicts_with' stanza may only appear once")
    end
    return @conflicts_with if args.empty?
    @conflicts_with ||= begin
      Hbc::DSL::ConflictsWith.new(*args) unless args.empty?
    rescue StandardError => e
      raise Hbc::CaskInvalidError.new(self.token, e)
    end
  end

  def artifacts
    @artifacts ||= Hash.new { |hash, key| hash[key] = Set.new }
  end

  def caskroom_path
    @caskroom_path ||= Hbc.caskroom.join(self.token)
  end

  def staged_path
    return @staged_path if @staged_path
    cask_version = self.version || :unknown
    @staged_path = self.caskroom_path.join(cask_version.to_s)
  end

  def caveats(*string, &block)
    @caveats ||= []
    if block_given?
      @caveats << Hbc::Caveats.new(block)
    elsif string.any?
      @caveats << string.map{ |s| s.to_s.sub(/[\r\n \t]*\Z/, "\n\n") }
    else
      # accessor
      @caveats
    end
  end

  def accessibility_access(accessibility_access=nil)
    if @accessibility_access and !accessibility_access.nil?
      raise Hbc::CaskInvalidError.new(self.token, "'accessibility_access' stanza may only appear once")
    end
    @accessibility_access ||= accessibility_access
  end

  def auto_updates(auto_updates=nil)
    if @auto_updates and !auto_updates.nil?
      raise Hbc::CaskInvalidError.new(self.token, "'auto_updates' stanza may only appear once")
    end
    @auto_updates ||= auto_updates
  end

  ORDINARY_ARTIFACT_TYPES.each do |type|
    define_method(type) do |*args|
      if type == :stage_only and args != [true]
        raise Hbc::CaskInvalidError.new(self.token, "'stage_only' takes a single argument: true")
      end
      artifacts[type] << args
      if artifacts.key?(:stage_only) and
        artifacts.keys.count > 1 and
        ! (artifacts.keys & ACTIVATABLE_ARTIFACT_TYPES).empty?
        raise Hbc::CaskInvalidError.new(self.token, "'stage_only' must be the only activatable artifact")
      end
    end
  end

  def installer(*args)
    if args.empty?
      return artifacts[:installer]
    end
    begin
      artifacts[:installer] << Hbc::DSL::Installer.new(*args)
      raise "'stage_only' must be the only activatable artifact" if artifacts.key?(:stage_only)
    rescue StandardError => e
      raise Hbc::CaskInvalidError.new(self.token, e)
    end
  end

  SPECIAL_ARTIFACT_TYPES.each do |type|
    define_method(type) do |*args|
      artifacts[type].merge(args)
    end
  end

  ARTIFACT_BLOCK_TYPES.each do |type|
    define_method(type) do |&block|
      artifacts[type] << block
    end
  end

  def method_missing(method, *args)
    Hbc::Utils.method_missing_message(method, self.token)
    return nil
  end
end
