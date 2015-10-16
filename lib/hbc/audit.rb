require 'hbc/checkable'
require 'hbc/download'

class Hbc::Audit
  attr_reader :cask

  include Hbc::Checkable

  def initialize(cask)
    @cask = cask
  end

  def run!(download = false)
    _check_required_stanzas
    _check_no_string_version_latest
    _check_sha256_no_check_if_latest
    _check_sha256_actually_256
    _check_sha256_invalid
    _check_sourceforge_download_url_format
    _check_download(download) if download
    return !(errors? or warnings?)
  end

  def summary_header
    "audit for #{cask}"
  end


  def _check_required_stanzas
    odebug "Auditing required stanzas"
    %i{version sha256 url homepage}.each do |sym|
      add_error "a #{sym} stanza is required" unless cask.send(sym)
    end
    add_error 'a license value is required (:unknown is OK)' unless cask.license
    # todo: specific DSL knowledge should not be spread around in various files like this
    # todo: nested_container should not still be a pseudo-artifact at this point
    installable_artifacts = cask.artifacts.reject{ |k,v| [:uninstall, :zap, :nested_container].include?(k)}
    add_error 'at least one activatable artifact stanza is required' unless installable_artifacts.size > 0
  end

  def _check_no_string_version_latest
    odebug "Verifying version :latest does not appear as a string ('latest')"
    if (cask.version == 'latest')
      add_error "you should use version :latest instead of version 'latest'"
    end
  end

  def _check_sha256_no_check_if_latest
    odebug "Verifying sha256 :no_check with version :latest"
    if cask.version == :latest and cask.sha256 != :no_check
      add_error "you should use sha256 :no_check when version is :latest"
    end
  end

  def _check_sha256_actually_256
    odebug "Verifying sha256 string is a legal SHA-256 digest"
    if cask.sha256.kind_of?(String)
      unless cask.sha256.length == 64 && cask.sha256[/^[0-9a-f]+$/i]
        add_error "sha256 string must be of 64 hexadecimal characters"
      end
    end
  end

  def _check_sha256_invalid
    odebug "Verifying sha256 is not a known invalid value"
    empty_sha256 = 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
    if cask.sha256 == empty_sha256
      add_error "cannot use the sha256 for an empty string: #{empty_sha256}"
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
      %r{\Ahttps?://sourceforge\.net/projects/[^/]+/files/latest/download\Z},
      %r{\Ahttps?://downloads\.sourceforge\.net/},
      %r{\Ahttps?://[^/]+\.sourceforge\.jp/},
      # special cases: cannot find canonical format URL
      %r{\Ahttps?://brushviewer\.sourceforge\.net/brushviewql\.zip\Z},
      %r{\Ahttps?://doublecommand\.sourceforge\.net/files/},
      %r{\Ahttps?://excalibur\.sourceforge\.net/get\.php\?id=},
    ]
    valid_url_formats.none? { |format| cask.url.to_s =~ format }
  end
end
