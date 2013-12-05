require 'cgi'

class Cask::DownloadStrategy < CurlDownloadStrategy
  attr_reader :headers, :url

  def initialize(cask, resource)
    @cask    = cask
    @headers = cask.headers
    @url     = resource.url
    super(cask.title, resource)
  end

  def _fetch
    curl(*curl_options)
  end

  private
  def default_options
    [url, '-C', downloaded_size, '-o', temporary_path]
  end

  def curl_options
    default_options.concat(headers.curl_options)
  end
end
