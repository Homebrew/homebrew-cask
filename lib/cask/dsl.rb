require 'checksum'
require 'set'

module Cask::DSL; end

require 'cask/dsl/base'
require 'cask/dsl/installer'
require 'cask/dsl/after_install'
require 'cask/dsl/after_uninstall'
require 'cask/dsl/before_install'
require 'cask/dsl/before_uninstall'
require 'cask/dsl/appcast'
require 'cask/dsl/conflicts_with'
require 'cask/dsl/container'
require 'cask/dsl/depends_on'
require 'cask/dsl/gpg'
require 'cask/dsl/license'
require 'cask/dsl/tags'

module Cask::DSL
  def self.included(base)
    base.extend(ClassMethods)
  end

  def homepage; self.class.homepage; end

  def url; self.class.url; end

  def appcast; self.class.appcast; end

  def gpg; self.class.gpg; end

  def version; self.class.version; end

  def license; self.class.license; end

  def depends_on_formula; self.class.depends_on_formula; end

  def depends_on; self.class.depends_on; end

  def conflicts_with; self.class.conflicts_with; end

  def container_type; self.class.container_type; end

  def container; self.class.container; end

  def tags; self.class.tags; end

  def sums; self.class.sums || []; end

  def artifacts; self.class.artifacts; end

  def caveats; self.class.caveats; end

  module ClassMethods
    def homepage(homepage=nil)
      if @homepage and !homepage.nil?
        raise CaskInvalidError.new(self.title, "'homepage' stanza may only appear once")
      end
      @homepage ||= homepage
    end

    def url(*args)
      if @url and !args.empty?
        raise CaskInvalidError.new(self.title, "'url' stanza may only appear once")
      end
      @url ||= begin
        Cask::URL.new(*args)
      rescue StandardError => e
        raise CaskInvalidError.new(self.title, "'url' stanza failed with: #{e}")
      end
    end

    def appcast(*args)
      if @appcast and !args.empty?
        raise CaskInvalidError.new(self.title, "'appcast' stanza may only appear once")
      end
      @appcast ||= begin
        Cask::DSL::Appcast.new(*args) unless args.empty?
      rescue StandardError => e
        raise CaskInvalidError.new(self.title, e)
      end
    end

    def gpg(*args)
      if @gpg and !args.empty?
        raise CaskInvalidError.new(self.title, "'gpg' stanza may only appear once")
      end
      @gpg ||= begin
        Cask::DSL::Gpg.new(*args) unless args.empty?
      rescue StandardError => e
        raise CaskInvalidError.new(self.title, e)
      end
    end

    # todo: remove this backwards compatibility element after 0.50.0
    def container_type(type=nil)
      if @container_type and !type.nil?
        raise CaskInvalidError.new(self.title, "'container_type' stanza may only appear once")
      end
      @container_type ||= type
    end

    def container(*args)
      if @container and !args.empty?
        # todo: remove this constraint, and instead merge multiple container stanzas
        raise CaskInvalidError.new(self.title, "'container' stanza may only appear once")
      end
      @container ||= begin
        Cask::DSL::Container.new(*args) unless args.empty?
      rescue StandardError => e
        raise CaskInvalidError.new(self.title, e)
      end
      # todo: remove this backwards compatibility section after removing container_type
      if @container.type
        @container_type ||= @container.type
      end
      # todo: remove this backwards compatibility section after removing nested_container
      if @container.nested
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
        raise CaskInvalidError.new(self.title, "'version' stanza may only appear once")
      elsif !arg.is_a?(String) and !SYMBOLIC_VERSIONS.include?(arg)
        raise CaskInvalidError.new(self.title, "invalid 'version' value: '#{arg.inspect}'")
      end
      @version ||= arg
    end

    def tags(*args)
      if @tags and !args.empty?
        # consider removing this limitation
        raise CaskInvalidError.new(self.title, "'tags' stanza may only appear once")
      end
      @tags ||= begin
        Cask::DSL::Tags.new(*args) unless args.empty?
      rescue StandardError => e
        raise CaskInvalidError.new(self.title, e)
      end
    end

    def license(arg=nil)
      if @license and !arg.nil?
        raise CaskInvalidError.new(self.title, "'license' stanza may only appear once")
      end
      @license ||= begin
        Cask::DSL::License.new(arg) unless arg.nil?
      rescue StandardError => e
        raise CaskInvalidError.new(self.title, e)
      end
    end

    def depends_on_formula(*args)
      @depends_on_formula ||= args
    end

    def depends_on(*args)
      if @depends_on and !args.empty?
        # todo: remove this constraint, and instead merge multiple depends_on stanzas
        raise CaskInvalidError.new(self.title, "'depends_on' stanza may only appear once")
      end
      @depends_on ||= begin
        Cask::DSL::DependsOn.new(*args) unless args.empty?
      rescue StandardError => e
        raise CaskInvalidError.new(self.title, e)
      end
      # todo: remove this backwards compatibility section after removing depends_on_formula
      if @depends_on.formula
        @depends_on_formula ||= [ @depends_on.formula ]
      end
      @depends_on
    end

    def conflicts_with(*args)
      if @conflicts_with and !args.empty?
        # todo: remove this constraint, and instead merge multiple conflicts_with stanzas
        raise CaskInvalidError.new(self.title, "'conflicts_with' stanza may only appear once")
      end
      @conflicts_with ||= begin
        Cask::DSL::ConflictsWith.new(*args) unless args.empty?
      rescue StandardError => e
        raise CaskInvalidError.new(self.title, e)
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
                                    ]
    end

    installable_artifact_types = ordinary_artifact_types
    installable_artifact_types.push :caskroom_only

    installable_artifact_types.each do |type|
      define_method(type) do |*args|
        artifacts[type] << args
      end
    end

    SPECIAL_ARTIFACT_TYPES = [
      :nested_container,
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

    def installer(*args)
      if args.empty?
        return artifacts[:installer]
      end
      begin
        artifacts[:installer] << Cask::DSL::Installer.new(*args)
      rescue StandardError => e
        raise CaskInvalidError.new(self.title, e)
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
      poo = <<-EOPOO.undent
        Unexpected method '#{method}' called on #{self}.

          If you are working on #{self}, this may point to a typo. Otherwise
          it probably means this Cask is using a new feature. If that feature
          has been released, running

            brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup

          should fix it. Otherwise you should wait to use #{self} until the
          new feature is released.
      EOPOO
      poo.split("\n").each { |line| opoo line }
    end
  end
end
