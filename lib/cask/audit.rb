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
    # todo: enable this test before 0.50.0
    # _check_no_string_version_latest
    _check_checksums
    _check_sha256_no_check_if_latest
    _check_sha256_if_versioned
    _check_sourceforge_download_url_format
    _check_download(download) if download
    return !(errors? or warnings?)
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
    return if cask.sums == :no_check
    add_error "sha256 is required" unless cask.sums.is_a?(Array) && cask.sums.length > 0
  end

  def _check_no_string_version_latest
    odebug "Verifying version :latest does not appear as a string ('latest')"
    if (cask.version == 'latest')
      add_error "you should use version :latest instead of version 'latest'"
    end
  end

  def _check_sha256_no_check_if_latest
    odebug "Verifying sha256 :no_check with version :latest"
    # todo: remove this string test before 0.50.0
    if ((cask.version == 'latest' or cask.version == :latest) and cask.sums.is_a?(Array))
      add_error "you should use sha256 :no_check when version is :latest"
    end
  end

  def _check_sha256_if_versioned
    odebug "Verifying a sha256 is present when versioned"
    # todo: remove this string test before 0.50.0
    if ((cask.version != 'latest' and cask.version != :latest) and cask.sums == :no_check)
      add_error "you must include a sha256 when version is not :latest"
    end
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
      add_warning "SourceForge URL format incorrect. See https://github.com/caskroom/homebrew-cask/blob/master/CONTRIBUTING.md#sourceforge-urls"
    end
  end

  def _bad_sourceforge_url?
    return false unless cask.url.to_s =~ /sourceforge/
    valid_url_formats = [
      %r{https?://sourceforge\.net/projects/.*/files/latest/download},
      %r{https?://downloads\.sourceforge\.net/},
      %r{https?://dl\.sourceforge\.jp/},
      # special case: cannot find canonical format URL
      %r{https?://brushviewer\.sourceforge\.net/brushviewql\.zip},
      %r{https?://doublecommand\.sourceforge\.net/files/},
    ]
    valid_url_formats.none? { |format| cask.url.to_s =~ format }
  end
end
