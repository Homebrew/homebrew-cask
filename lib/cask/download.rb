require 'digest'

class Cask::Download
  attr_reader :cask

  def initialize(cask)
    @cask = cask
  end

  def perform(force=false)
    if cask.url.using == :svn
      downloader = Cask::SubversionDownloadStrategy.new(cask)
    elsif cask.url.using == :post
      downloader = Cask::CurlPostDownloadStrategy.new(cask)
    else
      downloader = Cask::CurlDownloadStrategy.new(cask)
    end
    downloader.clear_cache if force
    begin
      downloaded_path = downloader.fetch
    rescue StandardError => e
      raise CaskError.new("Download failed on Cask '#{cask}' with message: #{e}")
    end
    begin
      # this symlink helps track which downloads are ours
      File.symlink downloaded_path,
                   HOMEBREW_CACHE_CASKS.join(downloaded_path.basename)
    rescue StandardError => e
    end
    _compare_sha256(downloaded_path, cask)
    downloaded_path
  end

  private
  def _calc_sha256(path)
    require 'digest/sha2'
    Digest::SHA2.file(path).hexdigest
  end

  def _compare_sha256(path, cask)
    begin
      expected = cask.sha256
    rescue RuntimeError => e
    end
    return if expected == :no_check
    computed = _calc_sha256(path)
    if expected.nil? or expected.empty?
      raise CaskSha256MissingError.new("sha256 required: sha256 '#{computed}'")
    end
    if expected == computed
      odebug "SHA256 checksums match"
    else
      ohai 'Note: running "brew update" may fix sha256 checksum errors'
      raise CaskSha256MismatchError.new(path, expected, computed)
    end
  end
end
