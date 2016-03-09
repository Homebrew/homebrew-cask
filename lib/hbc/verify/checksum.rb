require 'digest'

class Hbc::Verify::Checksum
  def self.me?(cask)
    return true unless cask.sha256 == :no_check
    ohai "No checksum defined for Cask #{cask}, skipping verification"
    false
  end

  attr_reader :cask, :downloaded_path

  def initialize(cask, downloaded_path)
    @cask = cask
    @downloaded_path = downloaded_path
  end

  def verify
    return unless self.class.me?(cask)
    ohai "Verifying checksum for Cask #{cask}"
    verify_checksum
  end

  private

  def expected
    @expected ||= cask.sha256
  end

  def computed
    @computed ||= Digest::SHA2.file(downloaded_path).hexdigest
  end

  def verify_checksum
    if expected.nil? || expected.empty?
      raise Hbc::CaskSha256MissingError.new("sha256 required: sha256 '#{computed}'")
    elsif expected == computed
      odebug "SHA256 checksums match"
    else
      ohai 'Note: running "brew update" may fix sha256 checksum errors'
      raise Hbc::CaskSha256MismatchError.new(downloaded_path, expected, computed)
    end
  end
end
