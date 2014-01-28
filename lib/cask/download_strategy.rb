require 'cgi'

class Cask::DownloadStrategy < CurlDownloadStrategy
  attr_reader :cask, :cask_url

  def initialize(cask)
    @cask     = cask
    @cask_url = cask.url
    super(
      cask.title,
      ::Resource.new(cask.title) do |r|
        r.url     cask.url.to_s
        r.version cask.version
      end
    )
  end

  def _fetch
    odebug "Calling curl with args #{curl_args}"
    curl(*curl_args)
  end

  private

  def curl_args
    default_curl_args.tap do |args|
      args.concat(user_agent_args)
      args.concat(cookies_args)
      args.concat(referer_args)
    end
  end

  def default_curl_args
    [cask_url, '-C', downloaded_size, '-o', temporary_path]
  end

  def user_agent_args
    if cask_url.user_agent
      ['-A', cask_url.user_agent]
    else
      []
    end
  end

  def cookies_args
    if cask_url.cookies
      [
        '-b',
        cask_url.cookies.map do |key, value|
          "#{CGI.escape(key.to_s)}=#{CGI.escape(value.to_s)}"
        end.join(';')
      ]
    else
      []
    end
  end

  def referer_args
    if cask_url.referer
      ['-e',  cask_url.referer]
    else
      []
    end
  end
end
