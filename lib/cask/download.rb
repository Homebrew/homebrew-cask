class Cask::Download
  attr_reader :cask

  def initialize(cask)
    @cask = cask
  end

  def perform(force=false)
    require 'software_spec'
    cask = @cask
    cask.url.each.collect do |cask_url|
      if cask_url.using == :svn
        downloader = Cask::SubversionDownloadStrategy.new(cask, cask_url)
      elsif cask_url.using == :post
        downloader = Cask::CurlPostDownloadStrategy.new(cask, cask_url)
      else
        downloader = Cask::CurlDownloadStrategy.new(cask, cask_url)
      end
      downloader.clear_cache if force
      downloaded_path = downloader.fetch
      begin
        # this symlink helps track which downloads are ours
        File.symlink downloaded_path,
                     HOMEBREW_CACHE_CASKS.join(downloaded_path.basename)
      rescue
      end
      url_sums = cask_url.sums.empty? ? cask.sums : cask_url.sums
      _check_sums(downloaded_path, url_sums) unless url_sums == :no_check
      if cask_url.multipart
        nil
      else
        downloaded_path
      end
    end.compact
  end

  private
  def _check_sums(path, sums)
    has_sum = false
    sums.each do |sum|
      unless sum.empty?
        computed = Checksum.new(sum.hash_type, Digest.const_get(sum.hash_type.to_s.upcase).file(path).hexdigest)
        if sum == computed
          odebug "Checksums match"
        else
          ohai 'Note: running "brew update" may fix checksum errors'
          raise ChecksumMismatchError.new(path, sum, computed)
        end
        has_sum = true
      end
    end
    raise ChecksumMissingError.new("Checksum required: sha256 '#{Digest::SHA256.file(path).hexdigest}'") unless has_sum
  end
end
