require 'cgi'

class Cask::Headers
  attr_reader :headers

  def initialize(args)
    @headers = args
    create_methods_from_headers
  end

  def curl_options(options=[])
    headers.map do |option, _|
      options.concat(send("#{option}_args")) if (!!send(option))
    end
    options.flatten
  end

  private
  def create_methods_from_headers
    headers.map do |header, option|
      (class << self; self; end).class_eval do
        define_method(header.to_sym) { option }
      end
    end
  end

  def user_agent_args
    ['-A', user_agent]
  end

  def cookies_args
    all_cookies = cookies.map do |name, value|
      "#{CGI.escape(name.to_s)}=#{CGI.escape(value.to_s)}"
    end
    ['-b', all_cookies.join(';')]
  end
end
