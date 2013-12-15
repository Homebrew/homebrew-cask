require 'checksum'
require 'set'

module Cask::DSL
  def self.included(base)
    base.extend(ClassMethods)
  end

  def homepage; self.class.homepage; end

  def url; self.class.url; end

  def version; self.class.version; end

  def sums; self.class.sums || []; end

  def artifacts; self.class.artifacts; end

  def caveats; ''; end

  module ClassMethods
    def homepage(homepage=nil)
      @homepage ||= homepage
    end

    def url(*args)
      @url ||= begin
        Cask::URL.new(*args) unless args.empty?
      end
    end

    def version(version=nil)
      @version ||= version
    end

    def artifacts
      @artifacts ||= Hash.new { |hash, key| hash[key] = Set.new }
    end

    ARTIFACT_TYPES = [
      :install,
      :link,
      :nested_container,
      :prefpane,
      :qlplugin,
      :font,
      :uninstall,
      :widget,
      :colorpicker,
    ]

    ARTIFACT_TYPES.each do |type|
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
      @sums ||= []
      @sums << Checksum.new(:md5, md5) unless md5.nil?
    end

    def sha1(sha1=nil)
      @sums ||= []
      @sums << Checksum.new(:sha1, sha1) unless sha1.nil?
    end

    def sha256(sha2=nil)
      @sums ||= []
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
  end
end
