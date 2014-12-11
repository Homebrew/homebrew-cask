require 'rubygems'

class Cask::DSL::DependsOn

  VALID_KEYS = Set.new [
                        :formula,
                        :cask,
                        :macos,
                        :arch,
                        :x11,
                        :java,
                       ]

  VALID_ARCHES = [
                  # category
                  :intel,
                  :ppc,
                  # specific
                  :i386,
                  :x86_64,
                  :ppc_7400,
                  :ppc_64,
                 ]

  # Intentionally undocumented: catch variant spellings.
  ARCH_SYNONYMS = {
                   :x86_32     => :i386,
                   :x8632      => :i386,
                   :x8664      => :x86_64,
                   :intel_32   => :i386,
                   :intel32    => :i386,
                   :intel_64   => :x86_64,
                   :intel64    => :x86_64,
                   :amd_64     => :x86_64,
                   :amd64      => :x86_64,
                   :ppc7400    => :ppc_7400,
                   :ppc_32     => :ppc_7400,
                   :ppc32      => :ppc_7400,
                   :ppc64      => :ppc_64,
                  }

  attr_accessor :java
  attr_accessor :pairs

  def initialize()
    @pairs ||= {}
  end

  def load(pairs={})
    pairs.each do |key, value|
      raise "invalid depends_on key: '#{key.inspect}'" unless VALID_KEYS.include?(key)
      writer_method = "#{key}=".to_sym
      @pairs[key] = send(writer_method, value)
    end
  end

  def self.coerce_os_release(arg)

    # supplement Homebrew's table
    @osx_symbols ||= OS::Mac::Version::SYMBOLS.merge!(
                                                      :cheetah => '10.0',
                                                      :puma    => '10.1',
                                                      :jaguar  => '10.2',
                                                      :panther => '10.3'
                                                     )
    @inverted_osx_symbols ||= @osx_symbols.invert

    begin
      if arg.is_a?(Symbol)
        Gem::Version.new(@osx_symbols.fetch(arg))
      elsif arg =~ %r{^\s*:?([a-z]\S+)\s*$}i
        Gem::Version.new(@osx_symbols.fetch($1.downcase.to_sym))
      elsif @inverted_osx_symbols.has_key?(arg)
        Gem::Version.new(arg)
      else
        raise
      end
    rescue StandardError => e
      raise "invalid 'depends_on :macos' value: #{arg.inspect}"
    end
  end

  def formula
    @formula
  end

  def formula=(*arg)
    @formula ||= []
    @formula.concat(Array(*arg))
  end

  def cask
    @cask
  end

  def cask=(*arg)
    @cask ||= []
    @cask.concat(Array(*arg))
  end

  def macos
    @macos
  end

  def macos=(*arg)
    @macos ||= []
    macos = if arg.count == 1 and
               arg.first =~ %r{^\s*(<|>|[=<>]=)\s*(\S+)\s*$}
      raise "'depends_on :macos' comparison expressions cannot be combined" unless @macos.empty?
      operator = $1.to_sym
      release = self.class.coerce_os_release($2)
      [[ operator, release ]]
    else
      raise "'depends_on :macos' comparison expressions cannot be combined" if @macos.first.is_a?(Symbol)
      Array(*arg).map do |elt|
        self.class.coerce_os_release(elt)
      end.sort
    end
    @macos.concat(macos)
  end

  def arch
    @arch
  end

  def arch=(*arg)
    @arch ||= []
    arches = Array(*arg).map do |elt|
      elt = elt.to_s.downcase.sub(%r{^:},'').gsub('-','_').to_sym
      ARCH_SYNONYMS.key?(elt) ? ARCH_SYNONYMS[elt] : elt
    end
    invalid_arches = arches - VALID_ARCHES
    raise "invalid 'depends_on :arch' values: #{invalid_arches.inspect}" unless invalid_arches.empty?
    @arch.concat(arches)
  end

  def x11
    @x11
  end

  def x11=(arg)
    raise "invalid depends_on :x11 value: #{arg.inspect}" unless [true, false].include?(arg)
    @x11 = arg
  end

  def to_yaml
    @pairs.to_yaml
  end

  def to_s
    @pairs.inspect
  end
end
