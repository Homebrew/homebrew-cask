class Cask::Download
  attr_reader :cask

  def initialize(cask)
    @cask = cask
  end

  def perform
    require 'software_spec'
    software_spec = SoftwareSpec.new(cask.url.to_s, cask.version)
    downloader = CurlDownloadStrategy.new(cask.title, software_spec)
    downloaded_path = downloader.fetch

    _check_sums(downloaded_path, cask.sums) unless cask.sums === 0
    downloaded_path
  end

  private
  def _check_sums(path, sums)
    has_sum = false
    sums.each do |sum|
      unless sum.empty?
        computed = Checksum.new(sum.hash_type, Digest.const_get(sum.hash_type.to_s.upcase).file(path).hexdigest)
        raise ChecksumMismatchError.new(sum, computed) unless sum == computed
        has_sum = true
      end
    end
    raise ChecksumMissingError.new("Checksum required. SHA1: '#{Digest::SHA1.file(path).hexdigest}'") unless has_sum
  end
end
