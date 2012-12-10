require 'formula_support'

module Cask::DSL
  def self.included(base)
    base.extend(ClassMethods)
  end
  
  module ClassMethods
    def stable(&block)
      return @stable unless block_given?
      blk = SpecBlock.new
      blk.instance_eval &block
      @stable = blk.spec
    end
    
    def edge(&block)
      return @edge unless block_given?
      blk = SpecBlock.new HeadSoftwareSpec
      blk.instance_eval &block
      @edge = blk.spec
    end
    
    def devel(&block)
      return @devel unless block_given?
      blk = SpecBlock.new
      blk.instance_eval &block
      @devel = blk.spec
    end
    
    def homepage(homepage=nil)
      @homepage ||= homepage
    end
    
    # The methods below define the
    # (shortcuts for the) stable spec.
    def url(url=nil)
      @stable ||= SpecBlock.new
      @stable.url url
    end
    
    def version(version=nil)
      @stable ||= SpecBlock.new
      @stable.version version
    end
    
    def md5(sum=nil)
      @stable ||= SpecBlock.new
      @stable.md5 sum
    end
    
    def sha1(sum=nil)
      @stable ||= SpecBlock.new
      @stable.sha1 sum
    end
    
    def sha256(sum=nil)
      @stable ||= SpecBlock.new
      @stable.sha256 sum
    end
    
    def mirror(mirror=nil)
      @stable ||= SpecBlock.new
      @stable.mirror mirror
    end
  end
  
  class SpecBlock
    attr_reader :spec
    
    def initialize(spec_klass=SoftwareSpec)
      @spec = spec_klass.new
    end
    
    def method_missing(m, *args)
      @spec.send(m, *args)
    end
  end
end
