require 'cask/checkable'
require 'cask/download'

class Cask::Audit
  attr_reader :cask

  include Cask::Checkable

  def initialize(cask)
    @cask = cask
  end

  def run!(download = false)
    _check_required_fields
    _check_checksums
    _check_no_checksums_if_latest
    _check_sourceforge_download_url_format
    _check_download(download) if download
  end

  def summary_header
    "audit for #{cask}"
  end


  def _check_required_fields
    odebug "Auditing required fields"
    add_error "url is required" unless cask.url
    add_error "version is required" unless cask.version
    add_error "homepage is required" unless cask.homepage
  end

  def _check_checksums
    odebug "Auditing checksums"
    return if cask.sums == 0
    add_error "could not find checksum or no_checksum" unless cask.sums.is_a?(Array) && cask.sums.length > 0
  end

  def _check_no_checksums_if_latest
    odebug "Verifying no_checkum with version 'latest'"
    add_error "you should use no_checksum when version is latest" if cask.version == "latest" && cask.sums.is_a?(Array)
  end

  def _check_download(download)
    odebug "Auditing download"
    download.perform
  rescue => e
    add_error "download not possible: #{e.message}"
  end

  def _check_sourceforge_download_url_format
    odebug "Auditing URL format"
    if _bad_sourceforge_url?
      add_warning "SourceForge URL format incorrect. See https://github.com/phinze/homebrew-cask/blob/master/CONTRIBUTING.md#sourceforge-urls"
    end
  end

  def _bad_sourceforge_url?
    return false unless cask.url.to_s =~ /sourceforge/
    valid_url_formats = [
      %r{https?://sourceforge.net/projects/.*/files/latest/download},
      %r{https?://downloads.sourceforge.net/},
      %r{https?://dl.sourceforge.jp/},
    ]
    valid_url_formats.none? { |format| cask.url.to_s =~ format }
  end
end
