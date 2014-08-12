class Cask::Gpg

  VALID_TYPES = Set.new [
                         :id,   # first one is the default
                         :url,
                        ]

  REQUIRED_PARAMETERS = [
                         :signature
                        ]

  attr_reader :key, :parameters, :type, :signature

  def initialize(key, parameters={})
    @parameters = parameters
    REQUIRED_PARAMETERS.each do |param|
      unless @parameters.key?(param) and not @parameters[param].nil?
        raise "gpg #{param.inspect} parameter is required"
      end
    end
    @key       = key
    @signature = Cask::UnderscoreSupportingURI.parse(@parameters[:signature])
    @type      = @parameters[:type]
    @type      = VALID_TYPES.first if @type.nil?
    unless VALID_TYPES.include?(@type)
      raise "invalid gpg type: '#{@type.inspect}'"
    end
    if @type == :url
      @key = Cask::UnderscoreSupportingURI.parse(@key)
    end
  end

  def to_yaml
    [@key, @parameters].to_yaml
  end

  def to_s
    @key.to_s
  end
end
