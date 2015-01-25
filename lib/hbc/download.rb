require 'digest'
require 'hbc/verify'

class Hbc::Download
  attr_reader :cask

  include Hbc::Verify

  def initialize(cask)
    @cask = cask
  end

  def perform(force=false)
    if cask.url.using == :svn
      downloader = Hbc::SubversionDownloadStrategy.new(cask)
    elsif cask.url.using == :post
      downloader = Hbc::CurlPostDownloadStrategy.new(cask)
    else
      downloader = Hbc::CurlDownloadStrategy.new(cask)
    end
    downloader.clear_cache if force
    begin
      downloaded_path = downloader.fetch
    rescue StandardError => e
      raise Hbc::CaskError.new("Download failed on Cask '#{cask}' with message: #{e}")
    end
    begin
      # this symlink helps track which downloads are ours
      File.symlink downloaded_path,
                   HOMEBREW_CACHE_CASKS.join(downloaded_path.basename)
    rescue StandardError => e
    end
    Hbc::Verify.checksum(downloaded_path, cask)
    downloaded_path
  end
end
