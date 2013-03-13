require 'cask/checkable'

class Cask::Audit
  attr_reader :cask

  include Cask::Checkable

  def initialize(cask)
    @cask = cask
  end

  def run!
    _check_required_fields
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
end
