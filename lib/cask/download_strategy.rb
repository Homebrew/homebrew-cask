require 'cgi'
require 'download_strategy'

class Cask::DownloadStrategy < ::CurlDownloadStrategy
  def initialize(name, package, cookies=nil)
    @cookies = cookies
    super(name, package)
  end

  def _fetch
    return super if @cookies.nil? or @cookies.empty?
    cookie_pairs = @cookies.map { |name, value|
      "#{CGI.escape(name.to_s)}=#{CGI.escape(value.to_s)}"
    }.join(';')
    curl @url, '-b', cookie_pairs, '-C', downloaded_size, '-o', @temporary_path
  end
end

