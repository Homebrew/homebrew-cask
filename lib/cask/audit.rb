class Cask::Audit
  attr_reader :cask, :errors, :warnings, :headers, :response_status

  def initialize(cask, fetcher=Cask::Fetcher)
    @cask = cask
    @errors = []
    @warnings = []
    @headers = {}
    @fetcher = fetcher
  end

  def run!
    _check_required_fields
    return if errors?
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

  def _check_required_fields
    add_error "url is required" unless cask.url
    add_error "version is required" unless cask.version
    add_error "homepage is required" unless cask.homepage
  end

end
