class Hbc::DSL::Appcast

  attr_reader :parameters, :checkpoint, :sha256

  def initialize(uri, parameters={})
    @parameters     = parameters
    @uri            = Hbc::UnderscoreSupportingURI.parse(uri)
    @checkpoint     = @parameters[:checkpoint]
    @sha256         = @parameters[:sha256] # DEPRECATED
  end

  def to_yaml
    [@uri, @parameters].to_yaml
  end

  def to_s
    @uri.to_s
  end
end
