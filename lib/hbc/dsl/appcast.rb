class Hbc::DSL::Appcast
  attr_reader :parameters, :checkpoint

  def initialize(uri, parameters = {})
    @parameters     = parameters
    @uri            = Hbc::UnderscoreSupportingURI.parse(uri)
    @checkpoint     = @parameters[:checkpoint]
    @user_agent     = @parameters[:user_agent]
  end

  def user_agent
    if @user_agent == :fake
      Hbc::URL::FAKE_USER_AGENT
    else
      @user_agent
    end
  end

  def to_yaml
    [@uri, @parameters].to_yaml
  end

  def to_s
    @uri.to_s
  end
end
