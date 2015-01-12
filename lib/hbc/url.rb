require 'forwardable'

class Hbc::URL
  FAKE_USER_AGENT = 'Chrome/32.0.1000.00'

  attr_reader :using, :revision, :trust_cert, :uri, :cookies, :referer, :data

  extend Forwardable
  def_delegators :uri, :path, :scheme, :to_s

  def initialize(uri, options={})
    @uri        = Hbc::UnderscoreSupportingURI.parse(uri)
    @user_agent = options[:user_agent]
    @cookies    = options[:cookies]
    @referer    = options[:referer]
    @using      = options[:using]
    @revision   = options[:revision]
    @trust_cert = options[:trust_cert]
    @data       = options[:data]
  end

  def user_agent
    if @user_agent == :fake
      FAKE_USER_AGENT
    else
      @user_agent
    end
  end
end
