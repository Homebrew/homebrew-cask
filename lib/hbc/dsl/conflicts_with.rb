class Hbc::DSL::ConflictsWith

  require 'hbc/conflicts'

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

  attr_reader *VALID_KEYS
  attr_accessor :java
  attr_accessor :pairs

  def initialize()
    @pairs ||= {}
  end

  def load(pairs={})
    pairs.each do |key, value|
      raise "invalid conflicts_with key: '#{key.inspect}'" unless VALID_KEYS.include?(key)
      writer_method = "#{key}=".to_sym
      @pairs[key] = send(writer_method, value)
    end
  end

  def self.coerce_os_release(arg)

    @osx_symbols ||= MacOS::Release::SYMBOLS
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
      raise "invalid 'conflicts_with :macos' value: #{arg.inspect}"
    end
  end

  def formula=(*arg)
    @formula ||= Hbc::Conflicts::FormulaConflicts.new
    @formula.load(Array(*arg))
  end

  def cask=(*arg)
    @cask ||= Hbc::Conflicts::CaskConflicts.new
    @cask.load(Array(*arg))
  end

  def macos=(*arg)
    @macos ||= Hbc::Conflicts::MacOSConflicts.new
    macos = if arg.count == 1 and
               arg.first =~ %r{^\s*(<|>|[=<>]=)\s*(\S+)\s*$}
      raise "'conflicts_with :macos' comparison expressions cannot be combined" unless @macos.args.empty?
      operator = $1.to_sym
      release = self.class.coerce_os_release($2)
      [[ operator, release ]]
    else
      raise "'conflicts_with :macos' comparison expressions cannot be combined" if @macos.args.first.is_a?(Symbol)
      Array(*arg).map do |elt|
        self.class.coerce_os_release(elt)
      end.sort
    end
    @macos.load(macos)
  end

  def arch=(*arg)
    @arch ||= Hbc::Conflicts::ArchConflicts.new
    arches = Array(*arg).map do |elt|
      elt = elt.to_s.downcase.sub(%r{^:},'').gsub('-','_').to_sym
      ARCH_SYNONYMS.key?(elt) ? ARCH_SYNONYMS[elt] : elt
    end
    invalid_arches = arches - VALID_ARCHES
    raise "invalid 'conflicts_with :arch' values: #{invalid_arches.inspect}" unless invalid_arches.empty?
    @arch.load(arches)
  end

  def x11=(arg)
    raise "invalid conflicts_with :x11 value: #{arg.inspect}" unless [true, false].include?(arg)
    @x11 = Hbc::Conflicts::X11Conflicts.new
  end

  def to_yaml
    @pairs.to_yaml
  end

  def to_s
    @pairs.inspect
  end
end
