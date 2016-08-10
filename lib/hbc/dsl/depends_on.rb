require "rubygems"

class Hbc::DSL::DependsOn
  VALID_KEYS = Set.new [
                         :formula,
                         :cask,
                         :macos,
                         :arch,
                         :x11,
                         :java,
                       ].freeze

  VALID_ARCHES = {
                   intel:    { type: :intel, bits: [32, 64] },
                   ppc:      { type: :ppc,   bits: [32, 64] },
                   # specific
                   i386:     { type: :intel, bits: 32 },
                   x86_64:   { type: :intel, bits: 64 },
                   ppc_7400: { type: :ppc,   bits: 32 },
                   ppc_64:   { type: :ppc,   bits: 64 },
                 }.freeze

  # Intentionally undocumented: catch variant spellings.
  ARCH_SYNONYMS = {
                    x86_32:   :i386,
                    x8632:    :i386,
                    x8664:    :x86_64,
                    intel_32: :i386,
                    intel32:  :i386,
                    intel_64: :x86_64,
                    intel64:  :x86_64,
                    amd_64:   :x86_64,
                    amd64:    :x86_64,
                    ppc7400:  :ppc_7400,
                    ppc_32:   :ppc_7400,
                    ppc32:    :ppc_7400,
                    ppc64:    :ppc_64,
                  }.freeze

  attr_accessor :java
  attr_accessor :pairs
  attr_reader :arch, :cask, :formula, :macos, :x11

  def initialize
    @pairs ||= {}
  end

  def load(pairs = {})
    pairs.each do |key, value|
      raise "invalid depends_on key: '#{key.inspect}'" unless VALID_KEYS.include?(key)
      writer_method = "#{key}=".to_sym
      @pairs[key] = send(writer_method, value)
    end
  end

  def self.coerce_os_release(arg)
    @macos_symbols ||= MacOS::Version::SYMBOLS
    @inverted_macos_symbols ||= @macos_symbols.invert

    begin
      if arg.is_a?(Symbol)
        Gem::Version.new(@macos_symbols.fetch(arg))
      elsif arg =~ %r{^\s*:?([a-z]\S+)\s*$}i
        Gem::Version.new(@macos_symbols.fetch(Regexp.last_match[1].downcase.to_sym))
      elsif @inverted_macos_symbols.key?(arg)
        Gem::Version.new(arg)
      else
        raise
      end
    rescue StandardError
      raise "invalid 'depends_on macos' value: #{arg.inspect}"
    end
  end

  def formula=(*arg)
    @formula ||= []
    @formula.concat(Array(*arg))
  end

  def cask=(*arg)
    @cask ||= []
    @cask.concat(Array(*arg))
  end

  def macos=(*arg)
    @macos ||= []
    macos = if arg.count == 1 && arg.first =~ %r{^\s*(<|>|[=<>]=)\s*(\S+)\s*$}
              raise "'depends_on macos' comparison expressions cannot be combined" unless @macos.empty?
              operator = Regexp.last_match[1].to_sym
              release = self.class.coerce_os_release(Regexp.last_match[2])
              [[operator, release]]
            else
              raise "'depends_on macos' comparison expressions cannot be combined" if @macos.first.is_a?(Symbol)
              Array(*arg).map { |elt|
                self.class.coerce_os_release(elt)
              }.sort
            end
    @macos.concat(macos)
  end

  def arch=(*arg)
    @arch ||= []
    arches = Array(*arg).map { |elt|
      elt = elt.to_s.downcase.sub(%r{^:}, "").tr("-", "_").to_sym
      ARCH_SYNONYMS.key?(elt) ? ARCH_SYNONYMS[elt] : elt
    }
    invalid_arches = arches - VALID_ARCHES.keys
    raise "invalid 'depends_on arch' values: #{invalid_arches.inspect}" unless invalid_arches.empty?
    @arch.concat(arches.map { |arch| VALID_ARCHES[arch] })
  end

  def x11=(arg)
    raise "invalid 'depends_on x11' value: #{arg.inspect}" unless [true, false].include?(arg)
    @x11 = arg
  end

  def to_yaml
    @pairs.to_yaml
  end

  def to_s
    @pairs.inspect
  end
end
