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
      send(writer_method, hvalue)
    end
    unless KEY_PARAMETERS.intersection(parameters.keys).length == 1
      raise "'gpg' stanza must include exactly one of: '#{KEY_PARAMETERS.to_a}'"
    end
  end

  def to_yaml
    # bug, :key_url value is not represented as an instance of Cask::UnderscoreSupportingURI
    [@signature, @parameters].to_yaml
  end

  def to_s
    @signature.to_s
  end
end
