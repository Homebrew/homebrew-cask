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
    
    %w(url version md5 sha1 sha256 mirror install).each do |m|
      class_eval <<-CODE.undent
      def #{m}(val=nil)
        unless val.nil?
          @stable ||= SpecBlock.new
          @stable.#{m}(val)
        end
        return @stable ? @stable.spec.#{m} : @#{m}
      end
      CODE
    end
  end
  
  class SpecBlock
    attr_reader :spec
    
    def initialize(spec_klass=SoftwareSpec)
      @spec = spec_klass.new
    end
    
    def install(opts)
      @spec.install = opts
    end
    
    def method_missing(m, *args)
      @spec.send(m, *args)
    end
  end
end

class SoftwareSpec
  attr_reader :install
  def install=(opts) @install ||= []; @install << opts; end
end