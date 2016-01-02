class Hbc::DSL::Appcast

  # todo  :latest_version is considered experimental
  #       and may be removed

  attr_reader :parameters, :sha256, :latest_version

  def initialize(uri, parameters={})
    @parameters     = parameters
    @uri            = Hbc::UnderscoreSupportingURI.parse(uri)
    @sha256         = @parameters[:sha256]
    @latest_version = @parameters[:latest_version]    # experimental
  end

  def to_yaml
    [@uri, @parameters].to_yaml
  end

  def to_s
    @uri.to_s
  end
end
