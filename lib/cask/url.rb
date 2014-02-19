require 'forwardable'

class Cask::URL
  FAKE_USER_AGENT = 'Chrome/32.0.1000.00'

  attr_reader :using, :revision, :trust_cert, :uri, :cookies, :referer, :data, :target, :multipart, :sums

  extend Forwardable
  def_delegators :uri, :path, :scheme, :to_s

  def initialize(uri, options={})
    @uri        = Cask::UnderscoreSupportingURI.parse(uri)
    @user_agent = options[:user_agent]
    @cookies    = options[:cookies]
    @referer    = options[:referer]
    @using      = options[:using]
    @revision   = options[:revision]
    @trust_cert = options[:trust_cert]
    @data       = options[:data]
    @target     = options[:target]
    @multipart  = options[:multipart]
    @sums       = []
    if options.key?(:sha256)
      if options[:sha256] == :no_check
        @sums = options[:sha256]
      else
        @sums  << Checksum.new(:sha2, options[:sha256])
      end
    end
    @sums       = :no_check if options.key?(:no_checksum) and options[:no_checksum]
  end

  def user_agent
    if @user_agent == :fake
      FAKE_USER_AGENT
    else
      @user_agent
    end
  end
end
