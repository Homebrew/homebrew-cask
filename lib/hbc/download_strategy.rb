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

class Hbc::SubversionDownloadStrategy < Hbc::HbSubversionDownloadStrategy

  # super does not provide checks for already-existing downloads
  def fetch
    if tarball_path.exist?
      puts "Already downloaded: #{tarball_path}"
    else
      super
      compress
    end
    tarball_path
  end

  # This primary reason for redefining this method is the trust_cert
  # option, controllable from the Cask definition. We also force
  # consistent timestamps.  The rest of this method is similar to
  # Homebrew's, but translated to local idiom.
  def fetch_repo target, url, revision=uri_object.revision, ignore_externals=false
    # Use "svn up" when the repository already exists locally.
    # This saves on bandwidth and will have a similar effect to verifying the
    # cache as it will make any changes to get the right revision.
    svncommand = target.directory? ? 'up' : 'checkout'
    args = [svncommand]

    # SVN shipped with XCode 3.1.4 can't force a checkout.
    args << '--force' unless MacOS.release == :leopard

    # make timestamps consistent for checksumming
    args.concat(%w[--config-option config:miscellany:use-commit-times=yes])

    if uri_object.trust_cert
      args << '--trust-server-cert'
      args << '--non-interactive'
    end

    args << url unless target.directory?
    args << target
    args << '-r' << revision if revision
    args << '--ignore-externals' if ignore_externals
    @command.run!('/usr/bin/svn',
                  :args => args,
                  :print_stderr => false)
  end

  def tarball_path
    @tarball_path ||= cached_location.dirname.join(cached_location.basename.to_s + "-#{@cask.version}.tar")
  end

  private

  # TODO/UPDATE: the tar approach explained below is fragile
  # against challenges such as case-sensitive filesystems,
  # and must be re-implemented.
  #
  # Seems nutty: we "download" the contents into a tape archive.
  # Why?
  # * A single file is tractable to the rest of the Cask toolchain,
  # * An alternative would be to create a Directory container type.
  #   However, some type of file-serialization trick would still be
  #   needed in order to enable calculating a single checksum over
  #   a directory.  So, in that alternative implementation, the
  #   special cases would propagate outside this class, including
  #   the use of tar or equivalent.
  # * SubversionDownloadStrategy.cached_location is not versioned
  # * tarball_path provides a needed return value for our overridden
  #   fetch method.
  # * We can also take this private opportunity to strip files from
  #   the download which are protocol-specific.

  def compress
    Dir.chdir(cached_location) do
      @command.run!('/usr/bin/tar', :args => ['-s/^\.//', '--exclude', '.svn', '-cf', Pathname.new(tarball_path), '--', '.'],
                                    :print_stderr => false)
    end
    clear_cache
  end
end
