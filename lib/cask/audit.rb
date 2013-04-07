require 'cask/checkable'

class Cask::Audit
  attr_reader :cask

  include Cask::Checkable

  def initialize(cask)
    @cask = cask
  end

  def run!
    _check_required_fields
    _check_checksums
    return if errors?
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
end
