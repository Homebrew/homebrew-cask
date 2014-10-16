class Cask::DSL::Appcast

  # todo  :latest_version is considered experimental
  #       and may be removed

  APPCAST_FORMATS = Set.new [
                             :sparkle,     # first one is the default
                             :plaintext,
                             :unknown,
                            ]

  attr_reader :parameters, :sha256, :format, :latest_version

  def initialize(uri, parameters={})
    @parameters     = parameters
    @uri            = Cask::UnderscoreSupportingURI.parse(uri)
    @sha256         = @parameters[:sha256]
    @latest_version = @parameters[:latest_version]    # experimental
    @format         = @parameters[:format]
    @format         = APPCAST_FORMATS.first if @format.nil?
    unless APPCAST_FORMATS.include?(@format)
      raise "invalid appcast format: '#{@format.inspect}'"
    end
  end

  def to_yaml
    [@uri, @parameters].to_yaml
  end

  def to_s
    @uri.to_s
  end
end
