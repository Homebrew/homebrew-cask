class Hbc::HbVCSDownloadStrategy < Hbc::AbstractDownloadStrategy
  REF_TYPES = [:branch, :revision, :revisions, :tag].freeze

  def initialize(cask,command=Hbc::SystemCommand)
    super
    @ref_type, @ref = extract_ref
    @clone = HOMEBREW_CACHE.join(cache_filename)
  end

  def extract_ref
    key = REF_TYPES.find do |type|
      uri_object.respond_to?(type) and uri_object.send(type)
    end
    return key, key ? uri_object.send(key) : nil
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

class Hbc::HbCurlDownloadStrategy < Hbc::AbstractDownloadStrategy
  # todo should be part of url object
  def mirrors
    @mirrors ||= []
  end

  def tarball_path
    @tarball_path ||= Pathname.new("#{HOMEBREW_CACHE}/#{name}-#{version}#{ext}")
  end

  def temporary_path
    @temporary_path ||= Pathname.new("#{tarball_path}.incomplete")
  end

  def cached_location
    tarball_path
  end

  def clear_cache
    [cached_location, temporary_path].each { |f| f.unlink if f.exist? }
  end

  def downloaded_size
    temporary_path.size? or 0
  end

  def fetch
    ohai "Downloading #{@url}"
    puts "The cache path for download: #{tarball_path}"
    unless tarball_path.exist?
      had_incomplete_download = temporary_path.exist?
      begin
        _fetch
      rescue Hbc::ErrorDuringExecution
        # 33 == range not supported
        # try wiping the incomplete download and retrying once
        if $?.exitstatus == 33 && had_incomplete_download
          ohai "Trying a full download"
          temporary_path.unlink
          had_incomplete_download = false
          retry
        else
          if @url =~ %r[^file://]
            msg = "File does not exist: #{@url.sub(%r[^file://], "")}"
          else
            msg = "Download failed: #{@url}"
          end
          raise Hbc::CurlDownloadStrategyError, msg
        end
      end
      Hbc::Utils.ignore_interrupts { temporary_path.rename(tarball_path) }
    else
      puts "Already downloaded: #{tarball_path}"
    end
  rescue Hbc::CurlDownloadStrategyError
    raise if mirrors.empty?
    puts "Trying a mirror..."
    @url = mirrors.shift
    retry
  else
    tarball_path
  end

  private

  def curl(*args)
    args << '--connect-timeout' << '5' unless mirrors.empty?
    super
  end

  def ext
    # We need a Pathname because we've monkeypatched extname to support double
    # extensions (e.g. tar.gz). -- todo actually that monkeypatch has been removed
    Pathname.new(@url).extname[/[^?]+/]
  end
end

class Hbc::HbSubversionDownloadStrategy < Hbc::HbVCSDownloadStrategy
  def cache_tag
    # todo: pass versions as symbols, support :head here
    version == 'head' ? "svn-HEAD" : "svn"
  end

  def repo_valid?
    @clone.join(".svn").directory?
  end

  def repo_url
    `svn info '#{@clone}' 2>/dev/null`.strip[/^URL: (.+)$/, 1]
  end

  def fetch
    @url = @url.sub(/^svn\+/, '') if @url =~ %r[^svn\+http://]
    ohai "Checking out #{@url}"

    clear_cache unless @url.chomp("/") == repo_url or quiet_system 'svn', 'switch', @url, @clone

    if @clone.exist? and not repo_valid?
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

      get_externals do |external_name, external_url|
        fetch_repo @clone+external_name, external_url, @ref[external_name], true
      end
    else
      fetch_repo @clone, @url
    end
  end

  def shell_quote(str)
    # Oh god escaping shell args.
    # See http://notetoself.vrensk.com/2008/08/escaping-single-quotes-in-ruby-harder-than-expected/
    str.gsub(/\\|'/) { |c| "\\#{c}" }
  end

  def get_externals
    `svn propget svn:externals '#{shell_quote(@url)}'`.chomp.each_line do |line|
      name, url = line.split(/\s+/)
      yield name, url
    end
  end
end
