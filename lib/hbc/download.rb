require "fileutils"
require "hbc/verify"

class Hbc::Download
  attr_reader :cask

  def initialize(cask, options = {})
    @cask = cask
    @force = options.fetch(:force, false)
  end

  def perform
    clear_cache
    fetch
    create_cache_symlink
    downloaded_path
  end

  private

  attr_reader :force
  attr_accessor :downloaded_path

  def downloader
    @downloader ||= case cask.url.using
                    when :svn
                      Hbc::SubversionDownloadStrategy.new(cask)
                    when :post
                      Hbc::CurlPostDownloadStrategy.new(cask)
                    else
                      Hbc::CurlDownloadStrategy.new(cask)
                    end
  end

  def clear_cache
    downloader.clear_cache if force || cask.version.latest?
  end

  def fetch
    self.downloaded_path = downloader.fetch
  rescue StandardError => e
    raise Hbc::CaskError, "Download failed on Cask '#{cask}' with message: #{e}"
  end

  # this symlink helps track which downloads are ours
  def create_cache_symlink
    symlink_path = HOMEBREW_CACHE_CASKS.join(downloaded_path.basename)
    FileUtils.ln_sf downloaded_path, symlink_path
  end
end
