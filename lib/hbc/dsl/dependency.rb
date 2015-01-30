class Hbc::DSL::Dependency

  require 'hbc/dependencies'

  VALID_KEYS = Set.new [
                        :formula,
                        :cask,
                        :macos,
                        :arch,
                        :x11,
                        :java,
                       ]

  attr_reader *VALID_KEYS
  attr_accessor :java
  attr_accessor :pairs

  def initialize(conflict: false)
    @pairs ||= {}
    @conflict = conflict
  end

  def load(pairs={})
    pairs.each do |key, value|
      raise "invalid depends_on key: '#{key.inspect}'" unless VALID_KEYS.include?(key)
      writer_method = "#{key}=".to_sym
      @pairs[key] = send(writer_method, value)
    end
  end

  def formula=(*arg)
    @formula ||= Hbc::Dependencies::FormulaDependencies.new(conflict: @conflict)
    @formula.load(*arg)
  end

  def cask=(*arg)
    @cask ||= Hbc::Dependencies::CaskDependencies.new(conflict: @conflict)
    @cask.load(*arg)
  end

  def macos=(*arg)
    @macos ||= Hbc::Dependencies::MacOSDependencies.new(conflict: @conflict)
    @macos.load(*arg)
  end

  def arch=(*arg)
    @arch ||= Hbc::Dependencies::ArchDependencies.new(conflict: @conflict)
    @arch.load(*arg)
  end

  def x11=(arg)
    @x11 ||= Hbc::Dependencies::X11Dependencies.new(conflict: @conflict)
    @x11.load(*arg)
  end

  def to_yaml
    @pairs.to_yaml
  end

  def to_s
    @pairs.inspect
  end
end
