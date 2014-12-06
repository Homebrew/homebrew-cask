require 'checksum'
require 'set'

module Cask::DSL; end

require 'cask/dsl/appcast'
require 'cask/dsl/base'
require 'cask/dsl/conflicts_with'
require 'cask/dsl/container'
require 'cask/dsl/depends_on'
require 'cask/dsl/gpg'
require 'cask/dsl/installer'
require 'cask/dsl/license'
require 'cask/dsl/postflight'
require 'cask/dsl/preflight'
require 'cask/dsl/tags'
require 'cask/dsl/uninstall_postflight'
require 'cask/dsl/uninstall_preflight'

module Cask::DSL
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

  def sums; self.class.sums || []; end

  def artifacts; self.class.artifacts; end

  def caveats; self.class.caveats; end

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
        # todo this idiom may be preferred to << if it behaves the same on Ruby 1.8 and 2.x
        @full_name.concat(Array(*_full_name))
      end
      @full_name
    end

    def homepage(homepage=nil)
      if @homepage and !homepage.nil?
        raise CaskInvalidError.new(self.token, "'homepage' stanza may only appear once")
      end
      @homepage ||= homepage
    end

    def url(*args)
      if @url and !args.empty?
        raise CaskInvalidError.new(self.token, "'url' stanza may only appear once")
      end
      @url ||= begin
        Cask::URL.new(*args)
      rescue StandardError => e
        raise CaskInvalidError.new(self.token, "'url' stanza failed with: #{e}")
      end
    end

    def appcast(*args)
      if @appcast and !args.empty?
        raise CaskInvalidError.new(self.token, "'appcast' stanza may only appear once")
      end
      @appcast ||= begin
        Cask::DSL::Appcast.new(*args) unless args.empty?
      rescue StandardError => e
        raise CaskInvalidError.new(self.token, e)
      end
    end

    def gpg(*args)
      if @gpg and !args.empty?
        raise CaskInvalidError.new(self.token, "'gpg' stanza may only appear once")
      end
      @gpg ||= begin
        Cask::DSL::Gpg.new(*args) unless args.empty?
      rescue StandardError => e
        raise CaskInvalidError.new(self.token, e)
      end
    end

    def container(*args)
      if @container and !args.empty?
        # todo: remove this constraint, and instead merge multiple container stanzas
        raise CaskInvalidError.new(self.token, "'container' stanza may only appear once")
      end
      @container ||= begin
        Cask::DSL::Container.new(*args) unless args.empty?
      rescue StandardError => e
        raise CaskInvalidError.new(self.token, e)
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
        raise CaskInvalidError.new(self.token, "'version' stanza may only appear once")
      elsif !arg.is_a?(String) and !SYMBOLIC_VERSIONS.include?(arg)
        raise CaskInvalidError.new(self.token, "invalid 'version' value: '#{arg.inspect}'")
      end
      @version ||= arg
    end

    def tags(*args)
      if @tags and !args.empty?
        # consider removing this limitation
        raise CaskInvalidError.new(self.token, "'tags' stanza may only appear once")
      end
      @tags ||= begin
        Cask::DSL::Tags.new(*args) unless args.empty?
      rescue StandardError => e
        raise CaskInvalidError.new(self.token, e)
      end
    end

    def license(arg=nil)
      if @license and !arg.nil?
        raise CaskInvalidError.new(self.token, "'license' stanza may only appear once")
      end
      @license ||= begin
        Cask::DSL::License.new(arg) unless arg.nil?
      rescue StandardError => e
        raise CaskInvalidError.new(self.token, e)
      end
    end

    def depends_on(*args)
      if @depends_on and !args.empty?
        # todo: remove this constraint, and instead merge multiple depends_on stanzas
        raise CaskInvalidError.new(self.token, "'depends_on' stanza may only appear once")
      end
      @depends_on ||= begin
        Cask::DSL::DependsOn.new(*args) unless args.empty?
      rescue StandardError => e
        raise CaskInvalidError.new(self.token, e)
      end
      @depends_on
    end

    def conflicts_with(*args)
      if @conflicts_with and !args.empty?
        # todo: remove this constraint, and instead merge multiple conflicts_with stanzas
        raise CaskInvalidError.new(self.token, "'conflicts_with' stanza may only appear once")
      end
      @conflicts_with ||= begin
        Cask::DSL::ConflictsWith.new(*args) unless args.empty?
      rescue StandardError => e
        raise CaskInvalidError.new(self.token, e)
      end
    end

    def artifacts
      @artifacts ||= Hash.new { |hash, key| hash[key] = Set.new }
    end

    def caveats(*string, &block)
      @caveats ||= []
      if block_given?
        @caveats << Cask::Caveats.new(block)
      elsif string.any?
        @caveats << string.map{ |s| s.to_s.sub(/[\r\n \t]*\Z/, "\n\n") }
      else
        # accessor
        @caveats
      end
    end

    def self.ordinary_artifact_types
      @@ordinary_artifact_types ||= [
                                     :app,
                                     :suite,
                                     :artifact,
                                     :prefpane,
                                     :qlplugin,
                                     :font,
                                     :widget,
                                     :service,
                                     :colorpicker,
                                     :binary,
                                     :input_method,
                                     :internet_plugin,
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
          raise CaskInvalidError.new(self.token, "'stage_only' takes a single argument: true")
        end
        artifacts[type] << args
        if artifacts.key?(:stage_only) and
          artifacts.keys.count > 1 and
          ! (artifacts.keys & Cask::DSL::ClassMethods.activatable_artifact_types).empty?
          raise CaskInvalidError.new(self.token, "'stage_only' must be the only activatable artifact")
        end
      end
    end

    def installer(*args)
      if args.empty?
        return artifacts[:installer]
      end
      begin
        artifacts[:installer] << Cask::DSL::Installer.new(*args)
        raise "'stage_only' must be the only activatable artifact" if artifacts.key?(:stage_only)
      rescue StandardError => e
        raise CaskInvalidError.new(self.token, e)
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

    attr_reader :sums

    def hash_name(hash_type)
      hash_type.to_s == 'sha2' ? 'sha256' : hash_type.to_s
    end

    def sha256(sha2=nil)
      if sha2 == :no_check
        @sums = sha2
      else
        @sums ||= []
        @sums << Checksum.new(:sha2, sha2) unless sha2.nil?
      end
    end

    def method_missing(method, *args)
      Cask::Utils.method_missing_message(method, self.token)
      return nil
    end
  end
end
