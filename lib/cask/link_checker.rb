class Cask::LinkChecker
  attr_accessor :cask, :errors, :response_status, :headers

  def initialize(cask, fetcher=Cask::Fetcher)
    @cask = cask
    @errors = []
    @warnings = []
    @headers = {}
    @fetcher = fetcher
  end

  def run
    _get_data_from_request
    return if errors?
    _check_response_status
  end

  def add_error(message)
    @errors << message
  end

  def add_warning(message)
    @warnings << message
  end

  def errors?
    !@errors.empty?
  end

  def warnings?
    !@warnings.empty?
  end

  def result
    if errors?
      "#{Tty.red}failed#{Tty.reset}"
    elsif warnings?
      "#{Tty.yellow}warning#{Tty.reset}"
    else
      "#{Tty.green}passed#{Tty.reset}"
    end
  end

  def summary
    summary = ["audit for #{cask}: #{result}"]

    @errors.each do |error|
      summary << " #{Tty.red}-#{Tty.reset} #{error}"
    end

    @warnings.each do |warning|
      summary << " #{Tty.yellow}-#{Tty.reset} #{warning}"
    end

    summary.join("\n")
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
      http_headers = response_lines[(response_lines.index(@response_status)+1)..-1]
      http_headers.each { |line|
        header_name, header_value = line.split(': ')
        @headers[header_name] = header_value
      }
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
