require 'fileutils'
require 'hbc/verify'

class Hbc::Download
  attr_reader :cask

  def initialize(cask)
    @cask = cask
  end

  def perform(force=false)
    clear_cache(force)
    fetch
    create_cache_symlink
    verify
    downloaded_path
  end

  private

  attr_accessor :downloaded_path

  def downloader
    @downloader ||= case cask.url.using
    when :svn then Hbc::SubversionDownloadStrategy.new(cask)
    when :post then Hbc::CurlPostDownloadStrategy.new(cask)
    else Hbc::CurlDownloadStrategy.new(cask)
    end
  end

  def clear_cache(force)
    downloader.clear_cache if force || cask.version == :latest
  end

  def fetch
    self.downloaded_path = downloader.fetch
  rescue StandardError => e
    raise Hbc::CaskError.new("Download failed on Cask '#{cask}' with message: #{e}")
  end

  # this symlink helps track which downloads are ours
  def create_cache_symlink
    symlink_path = HOMEBREW_CACHE_CASKS.join(downloaded_path.basename)
    FileUtils.ln_sf downloaded_path, symlink_path
  end

  def verify
    Hbc::Verify.all(cask, downloaded_path)
  end
end
