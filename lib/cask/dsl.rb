require 'formula_support'

module Cask::DSL
  def self.included(base)
    base.extend(ClassMethods)
  end

  def homepage; self.class.homepage; end

  def url; self.class.url; end

  def version; self.class.version; end

  def sums; self.class.sums || []; end

  def linkables; self.class.linkables || {}; end

  module ClassMethods
    def homepage(homepage=nil)
      @homepage ||= homepage
    end

    def url(url=nil)
      @url ||= (url && URI.parse(url))
    end

    def version(version=nil)
      @version ||= version
    end

    def linkables
      @linkables ||= Hash.new([])
    end

    def link(type, *files)
      linkables[type] += files
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
      opoo "Unexpected method #{method} called on #{self}. Running `brew update; brew upgrade brew-cask` will likely fix it."
    end
  end
end
