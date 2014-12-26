require 'exceptions'
require 'utils/json'
require 'open-uri'

module GitHub extend self
  ISSUES_URI = URI.parse("https://api.github.com/search/issues")

  Error = Class.new(RuntimeError)
  HTTPNotFoundError = Class.new(Error)

  class RateLimitExceededError < Error
    def initialize(reset, error)
      super <<-EOS.undent
        GitHub #{error}
        Try again in #{pretty_ratelimit_reset(reset)}, or create an API token:
          https://github.com/settings/applications
        and then set HOMEBREW_GITHUB_API_TOKEN.
        EOS
    end

    def pretty_ratelimit_reset(reset)
      if (seconds = Time.at(reset) - Time.now) > 180
        "%d minutes %d seconds" % [seconds / 60, seconds % 60]
      else
        "#{seconds} seconds"
      end
    end
  end

  class AuthenticationFailedError < Error
    def initialize(error)
      super <<-EOS.undent
        GitHub #{error}
        HOMEBREW_GITHUB_API_TOKEN may be invalid or expired, check:
          https://github.com/settings/applications
        EOS
    end
  end

  def open url, headers={}, &block
    # This is a no-op if the user is opting out of using the GitHub API.
    return if ENV['HOMEBREW_NO_GITHUB_API']

    safely_load_net_https

    default_headers = {
      "User-Agent" => HOMEBREW_USER_AGENT,
      "Accept"     => "application/vnd.github.v3+json",
    }

    default_headers['Authorization'] = "token #{HOMEBREW_GITHUB_API_TOKEN}" if HOMEBREW_GITHUB_API_TOKEN

    begin
      Kernel.open(url, default_headers.merge(headers)) do |f|
        yield Utils::JSON.load(f.read)
      end
    rescue OpenURI::HTTPError => e
      handle_api_error(e)
    rescue SocketError, OpenSSL::SSL::SSLError => e
      raise Error, "Failed to connect to: #{url}\n#{e.message}", e.backtrace
    rescue Utils::JSON::Error => e
      raise Error, "Failed to parse JSON response\n#{e.message}", e.backtrace
    end
  end

  def handle_api_error(e)
    if e.io.meta["x-ratelimit-remaining"].to_i <= 0
      reset = e.io.meta.fetch("x-ratelimit-reset").to_i
      error = Utils::JSON.load(e.io.read)["message"]
      raise RateLimitExceededError.new(reset, error)
    end

    case e.io.status.first
    when "401", "403"
      raise AuthenticationFailedError.new(e.message)
    when "404"
      raise HTTPNotFoundError, e.message, e.backtrace
    else
      raise Error, e.message, e.backtrace
    end
  end

  def issues_matching(query, qualifiers={})
    uri = ISSUES_URI.dup
    uri.query = build_query_string(query, qualifiers)
    open(uri) { |json| json["items"] }
  end

  def build_query_string(query, qualifiers)
    s = "q=#{uri_escape(query)}+"
    s << build_search_qualifier_string(qualifiers)
    s << "&per_page=100"
  end

  def build_search_qualifier_string(qualifiers)
    {
      :repo => "Homebrew/homebrew",
      :in => "title",
    }.update(qualifiers).map { |qualifier, value|
      "#{qualifier}:#{value}"
    }.join("+")
  end

  def uri_escape(query)
    if URI.respond_to?(:encode_www_form_component)
      URI.encode_www_form_component(query)
    else
      require "erb"
      ERB::Util.url_encode(query)
    end
  end

  def issues_for_formula name
    issues_matching(name, :state => "open")
  end

  def print_pull_requests_matching(query)
    return [] if ENV['HOMEBREW_NO_GITHUB_API']
    puts "Searching pull requests..."

    open_or_closed_prs = issues_matching(query, :type => "pr")

    open_prs = open_or_closed_prs.select {|i| i["state"] == "open" }
    if open_prs.any?
      puts "Open pull requests:"
      prs = open_prs
    elsif open_or_closed_prs.any?
      puts "Closed pull requests:"
      prs = open_or_closed_prs
    else
      return
    end

    prs.each { |i| puts "#{i["title"]} (#{i["html_url"]})" }
  end

  def private_repo?(user, repo)
    uri = URI.parse("https://api.github.com/repos/#{user}/#{repo}")
    open(uri) { |json| json["private"] }
  end
end
