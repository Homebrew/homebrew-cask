class Hbc::DSL::Appcast

  # todo  :latest_version is considered experimental
  #       and may be removed

  attr_reader :parameters, :checkpoint, :latest_version, :sha256

  def initialize(uri, parameters={})
    @parameters     = parameters
    @uri            = Hbc::UnderscoreSupportingURI.parse(uri)
    @checkpoint     = @parameters[:checkpoint]
    @latest_version = @parameters[:latest_version]    # experimental
    @sha256         = @parameters[:sha256] # DEPRECATED
  end

  def to_yaml
    [@uri, @parameters].to_yaml
  end

  def to_s
    @uri.to_s
  end
end
