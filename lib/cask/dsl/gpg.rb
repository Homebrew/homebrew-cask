class Cask::DSL::Gpg

  KEY_PARAMETERS = Set.new [
                            :key_id,
                            :key_url,
                           ]

  VALID_PARAMETERS = Set.new [ ]
  VALID_PARAMETERS.merge KEY_PARAMETERS

  attr_accessor *VALID_PARAMETERS
  attr_accessor :signature

  def initialize(signature, parameters={})
    @parameters = parameters
    @signature = Cask::UnderscoreSupportingURI.parse(signature)
    parameters.each do |hkey, hvalue|
      raise "invalid 'gpg' parameter: '#{hkey.inspect}'" unless VALID_PARAMETERS.include?(hkey)
      writer_method = "#{hkey}=".to_sym
      hvalue = Cask::UnderscoreSupportingURI.parse(hvalue) if hkey == :key_url
      valid_id?(hvalue) if hkey == :key_id
      send(writer_method, hvalue)
    end
    unless KEY_PARAMETERS.intersection(parameters.keys).length == 1
      raise "'gpg' stanza must include exactly one of: '#{KEY_PARAMETERS.to_a}'"
    end
  end

  def valid_id?(id)
    legal_lengths = Set.new [8, 16, 40]
    is_valid = id.kind_of?(String) && legal_lengths.include?(id.length) && id[/^[0-9a-f]+$/i]
    raise "invalid ':key_id' value: '#{id.inspect}'" unless is_valid

    is_valid
  end

  def to_yaml
    # bug, :key_url value is not represented as an instance of Cask::UnderscoreSupportingURI
    [@signature, @parameters].to_yaml
  end

  def to_s
    @signature.to_s
  end
end
