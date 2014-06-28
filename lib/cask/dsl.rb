require 'checksum'
require 'set'

module Cask::DSL
  def self.included(base)
    base.extend(ClassMethods)
  end

  def homepage; self.class.homepage; end

  def url; self.class.url; end

  def appcast; self.class.appcast; end

  def gpg; self.class.gpg; end

  def version; self.class.version; end

  def depends_on_formula; self.class.depends_on_formula; end

  def container_type; self.class.container_type; end

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
        Cask::URL.new(*args) unless args.empty?
      end
    end

    def appcast(*args)
      if @appcast and !args.empty?
        raise CaskInvalidError.new(self.title, "'appcast' stanza may only appear once")
      end
      @appcast ||= begin
        Cask::Appcast.new(*args) unless args.empty?
      rescue StandardError => e
        raise CaskInvalidError.new(self.title, e)
      end
    end

    def gpg(*args)
      if @gpg and !args.empty?
        raise CaskInvalidError.new(self.title, "'gpg' stanza may only appear once")
      end
      @gpg ||= begin
        Cask::Gpg.new(*args) unless args.empty?
      rescue StandardError => e
        raise CaskInvalidError.new(self.title, e)
      end
    end

    def container_type(type=nil)
      if @container_type and !type.nil?
        raise CaskInvalidError.new(self.title, "'container_type' stanza may only appear once")
      end
      @container_type ||= type
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

    def depends_on_formula(*args)
      @depends_on_formula ||= args
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
                                     :link,
                                     :prefpane,
                                     :qlplugin,
                                     :font,
                                     :widget,
                                     :service,
                                     :colorpicker,
                                     :binary,
                                     :input_method,
                                     :screen_saver,
                                     :install,
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
      :uninstall
    ]

    SPECIAL_ARTIFACT_TYPES.each do |type|
      define_method(type) do |*args|
        artifacts[type].merge(args)
      end
    end

    ARTIFACT_BLOCK_TYPES = [
      :after_install,
      :after_uninstall,
      :before_install,
      :before_uninstall,
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
