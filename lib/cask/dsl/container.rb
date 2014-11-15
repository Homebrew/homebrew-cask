class Cask::DSL::Container

  VALID_KEYS = Set.new [
                        :type,
                        :nested,
                       ]

  attr_accessor *VALID_KEYS
  attr_accessor :pairs

  def initialize(pairs={})
    @pairs = pairs
    pairs.each do |key, value|
      raise "invalid container key: '#{key.inspect}'" unless VALID_KEYS.include?(key)
      writer_method = "#{key}=".to_sym
      send(writer_method, value)
    end
  end

  def to_yaml
    @pairs.to_yaml
  end

  def to_s
    @pairs.inspect
  end
end
