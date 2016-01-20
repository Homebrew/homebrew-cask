require 'hbc/checkable'
require 'hbc/download'

class Hbc::Audit
  include Hbc::Checkable

  attr_reader :cask, :download

  def initialize(cask, download = false)
    @cask = cask
    @download = download
  end

  def run!
    check_required_stanzas
    check_version
    check_sha256
    check_appcast
    check_url
    check_download
    self
  end

  def success?
    !(errors? || warnings?)
  end

  def summary_header
    "audit for #{cask}"
  end

  private

  def check_required_stanzas
    odebug "Auditing required stanzas"
    %i{version sha256 url homepage}.each do |sym|
      add_error "a #{sym} stanza is required" unless cask.send(sym)
    end
    add_error 'a license stanza is required (:unknown is OK)' unless cask.license
    add_error 'at least one name stanza is required' if cask.name.empty?
    # todo: specific DSL knowledge should not be spread around in various files like this
    # todo: nested_container should not still be a pseudo-artifact at this point
    installable_artifacts = cask.artifacts.reject{ |k,v| [:uninstall, :zap, :nested_container].include?(k)}
    add_error 'at least one activatable artifact stanza is required' unless installable_artifacts.size > 0
  end

  def check_version
    return unless cask.version
    check_no_string_version_latest
  end

  def check_no_string_version_latest
    odebug "Verifying version :latest does not appear as a string ('latest')"
    if cask.version.raw_version == 'latest'
      add_error "you should use version :latest instead of version 'latest'"
    end
  end

  def check_sha256
    return unless cask.sha256
    check_sha256_no_check_if_latest
    check_sha256_actually_256
    check_sha256_invalid
  end

  def check_sha256_no_check_if_latest
    odebug "Verifying sha256 :no_check with version :latest"
    if cask.version.latest? && cask.sha256 != :no_check
      add_error "you should use sha256 :no_check when version is :latest"
    end
  end

  def check_sha256_actually_256(sha256: cask.sha256, stanza: 'sha256')
    odebug "Verifying #{stanza} string is a legal SHA-256 digest"
    if sha256.kind_of?(String)
      unless sha256.length == 64 && sha256[/^[0-9a-f]+$/i]
        add_error "sha256 string must be of 64 hexadecimal characters"
      end
    end
  end

  def check_sha256_invalid(sha256: cask.sha256, stanza: 'sha256')
    odebug "Verifying #{stanza} is not a known invalid value"
    empty_sha256 = 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
    if sha256 == empty_sha256
      add_error "cannot use the sha256 for an empty string: #{empty_sha256}"
    end
  end

  def check_appcast
    return unless cask.appcast
    odebug 'Auditing appcast'
    check_appcast_has_checkpoint
    return unless cask.appcast.checkpoint
    check_sha256_actually_256(sha256: cask.appcast.checkpoint, stanza: 'appcast :checkpoint')
    check_sha256_invalid(sha256: cask.appcast.checkpoint, stanza: 'appcast :checkpoint')
  end

  def check_appcast_has_checkpoint
    odebug 'Verifying appcast has :sha256 key'
    add_error 'a checkpoint sha256 is required for appcast' unless cask.appcast.checkpoint
  end

  def check_url
    return unless cask.url
    check_download_url_format
  end

  def check_download_url_format
    odebug "Auditing URL format"
    if bad_sourceforge_url?
      add_warning "SourceForge URL format incorrect. See https://github.com/caskroom/homebrew-cask/blob/master/CONTRIBUTING.md#sourceforgeosdn-urls"
    elsif bad_osdn_url?
      add_warning "OSDN URL format incorrect. See https://github.com/caskroom/homebrew-cask/blob/master/CONTRIBUTING.md#sourceforgeosdn-urls"
    end
  end

  def bad_url_format?(regex, valid_formats_array)
    return false unless cask.url.to_s =~ regex
    valid_formats_array.none? { |format| cask.url.to_s =~ format }
  end

  def bad_sourceforge_url?
    bad_url_format?(/sourceforge/, [
      %r{\Ahttps?://sourceforge\.net/projects/[^/]+/files/latest/download\Z},
      %r{\Ahttps?://downloads\.sourceforge\.net/},
      %r{\Ahttps?://[^/]+\.sourceforge\.jp/},
      # special cases: cannot find canonical format URL
      %r{\Ahttps?://brushviewer\.sourceforge\.net/brushviewql\.zip\Z},
      %r{\Ahttps?://doublecommand\.sourceforge\.net/files/},
      %r{\Ahttps?://excalibur\.sourceforge\.net/get\.php\?id=},
    ])
  end

  def bad_osdn_url?
    bad_url_format?(/osd/, [
      %r{\Ahttps?://[^/]+\.osdn\.jp/},
    ])
  end

  def check_download
    return unless download
    odebug "Auditing download"
    downloaded_path = download.perform
    Hbc::Verify.all(cask, downloaded_path)
  rescue => e
    add_error "download not possible: #{e.message}"
  end
end
