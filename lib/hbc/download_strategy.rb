require 'cgi'

# We abuse Homebrew's download strategies considerably here.
# * Our downloader instances only invoke the fetch and
#   clear_cache methods, ignoring stage
# * Our overridden fetch methods are expected to return
#   a value: the successfully downloaded file.

class Hbc::AbstractDownloadStrategy
  attr_reader :cask, :name, :url, :uri_object, :version

  def initialize(cask, command=Hbc::SystemCommand)
    @cask       = cask
    @command    = command
    # todo this excess of attributes is a function of integrating
    # with Homebrew's classes. Later we should be able to remove
    # these in favor of @cask
    @name       = cask.token
    @url        = cask.url.to_s
    @uri_object = cask.url
    @version    = cask.version
  end

  # All download strategies are expected to implement these methods
  def fetch; end
  def cached_location; end
  def clear_cache; end
end

require 'vendor/homebrew-fork/download_strategy'

class Hbc::CurlDownloadStrategy < Hbc::HbCurlDownloadStrategy

  def _fetch
    odebug "Calling curl with args #{curl_args.utf8_inspect}"
    curl(*curl_args)
  end

  def fetch
    super
    tarball_path
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
    [url, '-C', downloaded_size, '-o', temporary_path]
  end

  def user_agent_args
    if uri_object.user_agent
      ['-A', uri_object.user_agent]
    else
      []
    end
  end

  def cookies_args
    if uri_object.cookies
      [
        '-b',
        # sort_by is for predictability between Ruby versions
        uri_object.cookies.sort_by{ |key, value| key.to_s }.map do |key, value|
          "#{CGI.escape(key.to_s)}=#{CGI.escape(value.to_s)}"
        end.join(';')
      ]
    else
      []
    end
  end

  def referer_args
    if uri_object.referer
      ['-e',  uri_object.referer]
    else
      []
    end
  end
end

class Hbc::CurlPostDownloadStrategy < Hbc::CurlDownloadStrategy

  def curl_args
    super
    default_curl_args.concat(post_args)
  end

  def post_args
    if uri_object.data
      # sort_by is for predictability between Ruby versions
      uri_object.data.sort_by{ |key, value| key.to_s }.map do |key, value|
        ['-d', "#{CGI.escape(key.to_s)}=#{CGI.escape(value.to_s)}"]
      end.flatten()
    else
      ['-X', 'POST']
    end
  end
end
