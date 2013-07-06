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
    _check_sourceforge_download_url_format
    _check_download(download) if download 
  end

  def summary_header
    "audit for #{cask}"
  end


  def _check_required_fields
    add_error "url is required" unless cask.url
    add_error "version is required" unless cask.version
    add_error "homepage is required" unless cask.homepage
  end

  def _check_checksums
    return if cask.sums == 0
    add_error "could not find checksum or no_checksum" unless cask.sums.is_a?(Array) && cask.sums.length > 0
  end
  
  def _check_download(download)
    download.perform
  rescue => e
    add_error "download not possible: #{e.message}"
  end

  def _check_sourceforge_download_url_format
    if cask.url.to_s.match(/\S*sourceforge\.\S*\/\S*/i)
      unless cask.url.to_s.match(/\S*downloads.sourceforge.net\/\S+/i)
        add_warning "SourceForge URL format incorrect. See https://github.com/phinze/homebrew-cask/pull/225#issuecomment-16536889 for details"
      end
    end
  end
end
