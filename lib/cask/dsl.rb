require 'formula_support'
require 'set'

module Cask::DSL
  def self.included(base)
    base.extend(ClassMethods)
  end

  def homepage; self.class.homepage; end

  def url; self.class.url; end

  def cookies; self.class.cookies; end

  def version; self.class.version; end

  def sums; self.class.sums || []; end

  def linkables; self.class.linkables || {}; end

  def installables; self.class.installables || []; end

  def uninstallables; self.class.uninstallables || []; end

  def caveats; ''; end

  module ClassMethods
    def homepage(homepage=nil)
      @homepage ||= homepage
    end

    def url(url=nil, opts={})
      @cookies ||= opts[:cookies]
      @url ||= (url && URI.parse(url))
    end

    def cookies
      @cookies
    end

    def version(version=nil)
      @version ||= version
    end

    def linkables
      @linkables ||= Set.new
    end

    def link(*args)
      # handle old-style casks using link :app, 'Foo.app'
      args.shift if args.first.is_a? Symbol

      linkables.merge args
    end

    def installables
      @installables ||= Set.new
    end

    def install(*files)
      installables.merge files
    end

    def uninstallables
      @uninstallables ||= Set.new
    end

    def uninstall(options)
      uninstallables.merge [options]
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
