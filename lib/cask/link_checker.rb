require 'cask/checkable'

class Cask::LinkChecker
  attr_accessor :cask, :response_status, :headers

  include Cask::Checkable

  def initialize(cask, fetcher=Cask::Fetcher)
    @cask = cask
    @fetcher = fetcher
    @headers = {}
  end

  def summary_header
    "link check result for #{cask}"
  end

  def run
    cask.url.each do |cask_url|
      _get_data_from_request(cask_url)
      return if errors?
      _check_response_status(cask_url)
    end
  end

  HTTP_RESPONSES = [
    'HTTP/1.0 200 OK',
    'HTTP/1.1 200 OK',
    'HTTP/1.1 302 Found'
  ]

  OK_RESPONSES = {
    'http'  => HTTP_RESPONSES,
    'https' => HTTP_RESPONSES,
    'ftp'   => [ 'OK' ]
  }

  def _check_response_status(cask_url)
    ok = OK_RESPONSES[cask_url.scheme]
    unless ok.include?(@response_status)
      add_error "unexpected http response, expecting #{ok.map(&:inspect).join(' or ')}, got #{@response_status.inspect}"
    end
  end

  def _get_data_from_request(cask_url)
    @response_status = nil
    @headers = {}
    @errors = []
    @warnings = []

    response = @fetcher.head(cask_url)

    if response.empty?
      add_error "timeout while requesting #{cask_url}"
        return
      end

    response_lines = response.split("\n").map(&:chomp)

    case cask_url.scheme
    when 'http', 'https' then
      @response_status = response_lines.grep(/^HTTP/).last
      if @response_status.respond_to?(:strip)
        @response_status.strip!
        unless response_lines.index(@response_status).nil?
          http_headers = response_lines[(response_lines.index(@response_status)+1)..-1]
          http_headers.each { |line|
            header_name, header_value = line.split(': ')
            @headers[header_name] = header_value
          }
        end
      end
    when 'ftp' then
      @response_status = 'OK'
      response_lines.each { |line|
        header_name, header_value = line.split(': ')
        @headers[header_name] = header_value
      }
    else
      add_error "unknown scheme for #{cask_url}"
    end
  end
end
