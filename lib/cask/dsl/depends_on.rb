class Cask::DSL::DependsOn

  VALID_KEYS = Set.new [
                        :formula,
                        :cask,
                        :macos,
                        :arch,
                        :x11,
                        :java,
                       ]

  attr_accessor :formula, :cask, :arch, :x11, :java
  attr_accessor :pairs

  def initialize(pairs={})
    @pairs = pairs
    pairs.each do |key, value|
      raise "invalid depends_on key: '#{key.inspect}'" unless VALID_KEYS.include?(key)
      writer_method = "#{key}=".to_sym
      value = Array(value) if [:formula, :cask].include?(key)
      send(writer_method, value)
    end
  end

  def self.coerce_os_version(arg)

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

  def macos
    @macos
  end

  def macos=(arg)
    @macos = if arg.kind_of?(Array)
      arg.map do |elt|
        self.class.coerce_os_version(elt)
      end.sort
    elsif arg =~ %r{^\s*(<|>|[=<>]=)\s*(\S+)\s*$}
      operator = $1.to_sym
      version = self.class.coerce_os_version($2)
      [ operator, version ]
    else
      self.class.coerce_os_version(arg)
    end
    @pairs[:macos] = @macos
  end

  def to_yaml
    @pairs.to_yaml
  end

  def to_s
    @pairs.inspect
  end
end
