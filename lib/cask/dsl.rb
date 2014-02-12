require 'checksum'
require 'set'

module Cask::DSL
  def self.included(base)
    base.extend(ClassMethods)
  end

  def homepage; self.class.homepage; end

  def url; self.class.url; end

  def version; self.class.version; end

  def depends_on_formula; self.class.depends_on_formula; end

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

    def version(version=nil)
      if @version and !version.nil?
        raise CaskInvalidError.new(self.title, "'version' stanza may only appear once")
      end
      @version ||= version
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

    ARTIFACT_TYPES = [
      :link,
      :prefpane,
      :qlplugin,
      :font,
      :widget,
      :service,
      :colorpicker,
      :binary,
      :caskroom_only,
      :input_method,
      :screen_saver,
      :install,
    ]

    ARTIFACT_TYPES.each do |type|
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
      :after_uninstall
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

    def md5(md5=nil)
      if @sums == 0
        raise CaskInvalidError.new(self.title, "'no_checksum' stanza conflicts with 'md5'")
      end
      @sums ||= []
      @sums << Checksum.new(:md5, md5) unless md5.nil?
    end

    def sha1(sha1=nil)
      if @sums == 0
        raise CaskInvalidError.new(self.title, "'no_checksum' stanza conflicts with 'sha1'")
      end
      @sums ||= []
      @sums << Checksum.new(:sha1, sha1) unless sha1.nil?
    end

    def sha256(sha2=nil)
      if @sums == 0
        raise CaskInvalidError.new(self.title, "'no_checksum' stanza conflicts with 'sha256'")
      end
      @sums ||= []
      @sums << Checksum.new(:sha2, sha2) unless sha2.nil?
    end

    def no_checksum
      unless @sums.nil? or @sums.empty?
        raise CaskInvalidError.new(self.title, "'no_checksum' stanza conflicts with '#{hash_name(@sums.first.hash_type)}'")
      end
      @sums = 0
    end

    def method_missing(method, *args)
      poo = <<-EOPOO.undent
        Unexpected method '#{method}' called on #{self}.

          If you are working on #{self}, this may point to a typo. Otherwise
          it probably means this Cask is using a new feature. If that feature
          has been released, running `brew update; brew upgrade brew-cask`
          should fix it. Otherwise you should wait to use #{self} until the
          new feature is released.
      EOPOO
      poo.split("\n").each { |line| opoo line }
    end
  end
end
