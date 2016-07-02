class Hbc::DSL::StanzaProxy
  attr_reader :type

  def self.once(type)
    resolved = nil
    new(type) { resolved ||= yield }
  end

  def initialize(type, &resolver)
    @type = type
    @resolver = resolver
  end

  def proxy?
    true
  end

  def to_s
    @resolver.call.to_s
  end

  # Serialization for dumpcask
  def encode_with(coder)
    coder["type"] = type
    coder["resolved"] = @resolver.call
  end

  def respond_to?(symbol, include_private = false)
    return true if %i{encode_with proxy? to_s type}.include?(symbol)
    return false if symbol == :to_ary
    @resolver.call.respond_to?(symbol, include_private)
  end

  def method_missing(symbol, *args)
    @resolver.call.send(symbol, *args)
  end
end
