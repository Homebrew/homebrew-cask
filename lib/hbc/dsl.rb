require 'set'

module Hbc::DSL; end

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
require 'hbc/dsl/tags'
require 'hbc/dsl/uninstall_postflight'
require 'hbc/dsl/uninstall_preflight'

module Hbc::DSL
  def self.included(base)
    base.extend(ClassMethods)
  end

  def full_name; self.class.full_name; end

  def homepage; self.class.homepage; end

  def url; self.class.url; end

  def appcast; self.class.appcast; end

  def gpg; self.class.gpg; end

  def version; self.class.version; end

  def license; self.class.license; end

  def depends_on; self.class.depends_on; end

  def conflicts_with; self.class.conflicts_with; end

  def container; self.class.container; end

  def tags; self.class.tags; end

  def sha256; self.class.sha256; end

  def artifacts; self.class.artifacts; end

  def caskroom_path; self.class.caskroom_path; end

  def staged_path; self.class.staged_path; end

  def caveats; self.class.caveats; end

  def accessibility_access; self.class.accessibility_access; end

  module ClassMethods

    # A quite fragile shim to allow "full_name" be exposed as simply "name"
    # in the DSL.  We detect the difference with the already-existing "name"
    # method by arity, and use "full_name" exclusively in backend code.
    def name(*args)
      if args.empty?
        super
      else
        self.full_name(args)
      end
    end

    def full_name(_full_name=nil)
      @full_name ||= []
      if _full_name
        @full_name.concat(Array(*_full_name))
      end
      @full_name
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
        @version
      elsif @version
        raise Hbc::CaskInvalidError.new(self.token, "'version' stanza may only appear once")
      elsif !arg.is_a?(String) and !SYMBOLIC_VERSIONS.include?(arg)
        raise Hbc::CaskInvalidError.new(self.token, "invalid 'version' value: '#{arg.inspect}'")
      end
      @version ||= arg
    end

    SYMBOLIC_SHA256S = Set.new [
      :no_check,
    ]

    def sha256(arg=nil)
      if arg.nil?
        @sha256
      elsif @sha256
        raise Hbc::CaskInvalidError.new(self.token, "'sha256' stanza may only appear once")
      elsif !arg.is_a?(String) and !SYMBOLIC_SHA256S.include?(arg)
        raise Hbc::CaskInvalidError.new(self.token, "invalid 'sha256' value: '#{arg.inspect}'")
      end
      @sha256 ||= arg
    end

    def tags(*args)
      return @tags if args.empty?
      if @tags and !args.empty?
        # consider removing this limitation
        raise Hbc::CaskInvalidError.new(self.token, "'tags' stanza may only appear once")
      end
      @tags ||= begin
        Hbc::DSL::Tags.new(*args) unless args.empty?
      rescue StandardError => e
        raise Hbc::CaskInvalidError.new(self.token, e)
      end
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

    def self.ordinary_artifact_types
      @@ordinary_artifact_types ||= [
                                     :app,
                                     :suite,
                                     :artifact,
                                     :prefpane,
                                     :qlplugin,
                                     :font,
                                     :service,
                                     :colorpicker,
                                     :binary,
                                     :input_method,
                                     :internet_plugin,
                                     :audio_unit_plugin,
                                     :vst_plugin,
                                     :screen_saver,
                                     :pkg,
                                     :stage_only,
                                    ]
    end

    def self.activatable_artifact_types
      @@activatable_artifact_types ||= [:installer, *ordinary_artifact_types] - [:stage_only]
    end

    ordinary_artifact_types.each do |type|
      define_method(type) do |*args|
        if type == :stage_only and args != [true]
          raise Hbc::CaskInvalidError.new(self.token, "'stage_only' takes a single argument: true")
        end
        artifacts[type] << args
        if artifacts.key?(:stage_only) and
          artifacts.keys.count > 1 and
          ! (artifacts.keys & Hbc::DSL::ClassMethods.activatable_artifact_types).empty?
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

    SPECIAL_ARTIFACT_TYPES = [
      :uninstall,
      :zap,
    ]

    SPECIAL_ARTIFACT_TYPES.each do |type|
      define_method(type) do |*args|
        artifacts[type].merge(args)
      end
    end

    ARTIFACT_BLOCK_TYPES = [
      :preflight,
      :postflight,
      :uninstall_preflight,
      :uninstall_postflight,
    ]

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
end
