class Hbc::DSL::Installer
  VALID_KEYS = Set.new [
                         :manual,
                         :script,
                       ]

  attr_accessor(*VALID_KEYS)

  def initialize(*parameters)
    raise Hbc::CaskInvalidError.new(token, "'installer' stanza requires an argument") if parameters.empty?
    parameters = {}.merge(*parameters)
    if parameters.key?(:script) && !parameters[:script].respond_to?(:key?)
      if parameters.key?(:executable)
        raise Hbc::CaskInvalidError.new(token, "'installer' stanza gave arguments for both :script and :executable")
      end
      parameters[:executable] = parameters[:script]
      parameters.delete(:script)
      parameters = { script: parameters }
    end
    unless parameters.keys.length == 1
      raise "invalid 'installer' stanza: only one of #{VALID_KEYS.inspect} is permitted"
    end
    key = parameters.keys.first
    raise "invalid 'installer' stanza key: '#{key.inspect}'" unless VALID_KEYS.include?(key)
    writer_method = "#{key}=".to_sym
    send(writer_method, parameters[key])
  end
end
