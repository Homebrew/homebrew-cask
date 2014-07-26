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
    _get_data_from_request
    return if errors?
    _check_response_status
  end

  HTTP_RESPONSES = [
    'HTTP/1.0 200 OK',
    'HTTP/1.1 200 OK'
  ]

  OK_RESPONSES = {
    'http'  => HTTP_RESPONSES,
    'https' => HTTP_RESPONSES,
    'ftp'   => [ 'OK' ]
  }

  def _check_response_status
    ok = OK_RESPONSES[cask.url.scheme]
    unless ok.include?(@response_status)
      add_error "unexpected http response, expecting #{ok.map(&:inspect).join(' or ')}, got #{@response_status.inspect}"
    end
  end

  def _get_data_from_request
    response = @fetcher.head(cask.url)

    if response.empty?
      add_error "timeout while requesting #{cask.url}"
      return
    end

    response_lines = response.split("\n").map(&:chomp)

    case cask.url.scheme
    when 'http', 'https' then
      @response_status = response_lines.grep(/^HTTP/).last
      unless response_lines.index(@response_status).nil?
        http_headers = response_lines[(response_lines.index(@response_status)+1)..-1]
        http_headers.each { |line|
          header_name, header_value = line.split(': ')
          @headers[header_name] = header_value
        }
      end
    when 'ftp' then
      @response_status = 'OK'
      response_lines.each { |line|
        header_name, header_value = line.split(': ')
        @headers[header_name] = header_value
      }
    else
      add_error "unknown scheme for #{cask.url}"
    end
  end
end
