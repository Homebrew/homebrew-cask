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

  def channels; self.class.channels; end

  def use_channel channel; self.class.use_channel channel; end


  module ClassMethods
    def homepage(homepage=nil)
      @homepage = homepage || @homepage
    end

    def url(*args)
      @url = args.empty? ? @url : Cask::URL.new(*args)
    end

    def version(version=nil)
      @version = version || @version
    end

    def depends_on_formula(*args)
      @depends_on_formula = args
    end

    def artifacts
      @artifacts ||= Hash.new { |hash, key| hash[key] = Set.new }
    end

    def caveats(*string, &block)
      @caveats ||= []
      if block_given?
        @caveats << Cask::Caveats.new(block)
      elsif string.any?
        @caveats << string
      else
        # accessor
        @caveats
      end
    end

    def channel(*args, &block)
      @channels ||= Hash.new { |hash, key| hash[key] = [] }
      if block_given?
        args.each do |c|
          @channels[c.to_s] << args << block
        end
      end
    end

    def channels
      @channels
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
      :input_method
    ]

    ARTIFACT_TYPES.each do |type|
      define_method(type) do |*args|
        artifacts[type] << args
      end
    end

    SPECIAL_ARTIFACT_TYPES = [
      :install,
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

    def md5(md5=nil)
      @sums = [] if @sums == 0 || @sums.nil?
      @sums << Checksum.new(:md5, md5) unless md5.nil?
    end

    def sha1(sha1=nil)
      @sums = [] if @sums == 0 || @sums.nil?
      @sums << Checksum.new(:sha1, sha1) unless sha1.nil?
    end

    def sha256(sha2=nil)
      @sums = [] if @sums == 0 || @sums.nil?
      @sums << Checksum.new(:sha2, sha2) unless sha2.nil?
    end

    def no_checksum
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

    def use_channel(channel)
      if channels.keys.include? channel
        backup_artifacts = @artifacts
        @artifacts = Hash.new { |hash, key| hash[key] = Set.new }
        backup_caveats = @caveats
        @caveats = []

        channels[channel][1].call channels[channel][0]

        @artifacts = backup_artifacts unless @artifacts.any?
        @caveats = backup_caveats unless @caveats.any?
      else
      end
    end
  end
end
