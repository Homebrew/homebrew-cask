class Cask::DSL::Installer

  VALID_KEYS = Set.new [
                        :manual,
                        :script,
                       ]

  attr_accessor *VALID_KEYS

  def initialize(*parameters)
    unless parameters.length > 0
      raise CaskInvalidError.new(self.token, "'installer' stanza requires an argument")
    end
    parameters = Hash.new().merge(*parameters)
    if parameters.key?(:script) and ! parameters[:script].respond_to?(:key?)
      if parameters.key?(:executable)
        raise CaskInvalidError.new(self.token, "'installer' stanza gave arguments for both :script and :executable")
      end
      parameters[:executable] = parameters[:script]
      parameters.delete(:script)
      parameters = { :script => parameters }
    end
    unless parameters.keys.length == 1
      raise "invalid 'installer' stanza: only one of #{VALID_KEYS.inspect} is permitted"
    end
    key = parameters.keys.first
    raise "invalid 'installer' stanza key: '#{key.inspect}'" unless VALID_KEYS.include?(key)
    writer_method = "#{key}=".to_sym
    send(writer_method, parameters[key])
  end

  def to_yaml
    @pairs.to_yaml
  end

  def to_s
    @pairs.inspect
  end
end
