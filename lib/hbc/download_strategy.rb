require "cgi"

# We abuse Homebrew's download strategies considerably here.
# * Our downloader instances only invoke the fetch and
#   clear_cache methods, ignoring stage
# * Our overridden fetch methods are expected to return
#   a value: the successfully downloaded file.

class Hbc::AbstractDownloadStrategy
  attr_reader :cask, :name, :url, :uri_object, :version

  def initialize(cask, command = Hbc::SystemCommand)
    @cask       = cask
    @command    = command
    # TODO: this excess of attributes is a function of integrating
    #       with Homebrew's classes. Later we should be able to remove
    #       these in favor of @cask
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

class Hbc::HbVCSDownloadStrategy < Hbc::AbstractDownloadStrategy
  REF_TYPES = [:branch, :revision, :revisions, :tag].freeze

  def initialize(cask, command = Hbc::SystemCommand)
    super
    @ref_type, @ref = extract_ref
    @clone = Hbc.cache.join(cache_filename)
  end

  def extract_ref
    key = REF_TYPES.find { |type|
      uri_object.respond_to?(type) && uri_object.send(type)
    }
    [key, key ? uri_object.send(key) : nil]
  end

  def cache_filename
    "#{name}--#{cache_tag}"
  end

  def cache_tag
    "__UNKNOWN__"
  end

  def cached_location
    @clone
  end

  def clear_cache
    cached_location.rmtree if cached_location.exist?
  end
end

class Hbc::CurlDownloadStrategy < Hbc::AbstractDownloadStrategy
  # TODO: should be part of url object
  def mirrors
    @mirrors ||= []
  end

  def tarball_path
    @tarball_path ||= Hbc.cache.join("#{name}--#{version}#{ext}")
  end

  def temporary_path
    @temporary_path ||= tarball_path.sub(%r{$}, ".incomplete")
  end

  def cached_location
    tarball_path
  end

  def clear_cache
    [cached_location, temporary_path].each do |f|
      next unless f.exist?
      raise CurlDownloadStrategyError, "#{f} is in use by another process" if Hbc::Utils.file_locked?(f)
      f.unlink
    end
  end

  def downloaded_size
    temporary_path.size? || 0
  end

  def _fetch
    odebug "Calling curl with args #{cask_curl_args.utf8_inspect}"
    curl(*cask_curl_args)
  end

  def fetch
    ohai "Downloading #{@url}"
    if tarball_path.exist?
      puts "Already downloaded: #{tarball_path}"
    else
      had_incomplete_download = temporary_path.exist?
      begin
        File.open(temporary_path, "w+") do |f|
          f.flock(File::LOCK_EX)
          _fetch
          f.flock(File::LOCK_UN)
        end
      rescue ErrorDuringExecution
        # 33 == range not supported
        # try wiping the incomplete download and retrying once
        if $CHILD_STATUS.exitstatus == 33 && had_incomplete_download
          ohai "Trying a full download"
          temporary_path.unlink
          had_incomplete_download = false
          retry
        end

        msg = @url
        msg.concat("\nThe incomplete download is cached at #{temporary_path}") if temporary_path.exist?
        raise CurlDownloadStrategyError, msg
      end
      ignore_interrupts { temporary_path.rename(tarball_path) }
    end
    tarball_path
  rescue CurlDownloadStrategyError
    raise if mirrors.empty?
    puts "Trying a mirror..."
    @url = mirrors.shift
    retry
  end

  private

  def cask_curl_args
    default_curl_args.tap do |args|
      args.concat(user_agent_args)
      args.concat(cookies_args)
      args.concat(referer_args)
    end
  end

  def default_curl_args
    [url, "-C", downloaded_size, "-o", temporary_path]
  end

  def user_agent_args
    if uri_object.user_agent
      ["-A", uri_object.user_agent]
    else
      []
    end
  end

  def cookies_args
    if uri_object.cookies
      [
        "-b",
        # sort_by is for predictability between Ruby versions
        uri_object
          .cookies
          .sort_by(&:to_s)
          .map { |key, value| "#{CGI.escape(key.to_s)}=#{CGI.escape(value.to_s)}" }
          .join(";"),
      ]
    else
      []
    end
  end

  def referer_args
    if uri_object.referer
      ["-e", uri_object.referer]
    else
      []
    end
  end

  def ext
    Pathname.new(@url).extname
  end
end

class Hbc::CurlPostDownloadStrategy < Hbc::CurlDownloadStrategy
  def cask_curl_args
    super
    default_curl_args.concat(post_args)
  end

  def post_args
    if uri_object.data
      # sort_by is for predictability between Ruby versions
      uri_object
        .data
        .sort_by(&:to_s)
        .map { |key, value| ["-d", "#{CGI.escape(key.to_s)}=#{CGI.escape(value.to_s)}"] }
        .flatten
    else
      ["-X", "POST"]
    end
  end
end

class Hbc::SubversionDownloadStrategy < Hbc::HbVCSDownloadStrategy
  def cache_tag
    # TODO: pass versions as symbols, support :head here
    version == "head" ? "svn-HEAD" : "svn"
  end

  def repo_valid?
    @clone.join(".svn").directory?
  end

  def repo_url
    `svn info '#{@clone}' 2>/dev/null`.strip[%r{^URL: (.+)$}, 1]
  end

  # super does not provide checks for already-existing downloads
  def fetch
    if tarball_path.exist?
      puts "Already downloaded: #{tarball_path}"
    else
      @url = @url.sub(%r{^svn\+}, "") if @url =~ %r{^svn\+http://}
      ohai "Checking out #{@url}"

      clear_cache unless @url.chomp("/") == repo_url || quiet_system("svn", "switch", @url, @clone)

      if @clone.exist? && !repo_valid?
        puts "Removing invalid SVN repo from cache"
        clear_cache
      end

      case @ref_type
      when :revision
        fetch_repo @clone, @url, @ref
      when :revisions
        # nil is OK for main_revision, as fetch_repo will then get latest
        main_revision = @ref[:trunk]
        fetch_repo @clone, @url, main_revision, true

        fetch_externals do |external_name, external_url|
          fetch_repo @clone + external_name, external_url, @ref[external_name], true
        end
      else
        fetch_repo @clone, @url
      end
      compress
    end
    tarball_path
  end

  # This primary reason for redefining this method is the trust_cert
  # option, controllable from the Cask definition. We also force
  # consistent timestamps.  The rest of this method is similar to
  # Homebrew's, but translated to local idiom.
  def fetch_repo(target, url, revision = uri_object.revision, ignore_externals = false)
    # Use "svn up" when the repository already exists locally.
    # This saves on bandwidth and will have a similar effect to verifying the
    # cache as it will make any changes to get the right revision.
    svncommand = target.directory? ? "up" : "checkout"
    args = [svncommand]

    # SVN shipped with XCode 3.1.4 can't force a checkout.
    args << "--force" unless MacOS.version == :leopard

    # make timestamps consistent for checksumming
    args.concat(%w[--config-option config:miscellany:use-commit-times=yes])

    if uri_object.trust_cert
      args << "--trust-server-cert"
      args << "--non-interactive"
    end

    args << url unless target.directory?
    args << target
    args << "-r" << revision if revision
    args << "--ignore-externals" if ignore_externals
    @command.run!("/usr/bin/svn",
                  args:         args,
                  print_stderr: false)
  end

  def tarball_path
    @tarball_path ||= cached_location.dirname.join(cached_location.basename.to_s + "-#{@cask.version}.tar")
  end

  def shell_quote(str)
    # Oh god escaping shell args.
    # See http://notetoself.vrensk.com/2008/08/escaping-single-quotes-in-ruby-harder-than-expected/
    str.gsub(%r{\\|'}) { |c| "\\#{c}" }
  end

  def fetch_externals
    `svn propget svn:externals '#{shell_quote(@url)}'`.chomp.each_line do |line|
      name, url = line.split(%r{\s+})
      yield name, url
    end
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
      @command.run!("/usr/bin/tar",
                    args:         ['-s/^\.//', "--exclude", ".svn", "-cf", Pathname.new(tarball_path), "--", "."],
                    print_stderr: false)
    end
    clear_cache
  end
end
