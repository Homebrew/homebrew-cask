module Cask::Source; end

require 'cask/source/gone'
require 'cask/source/path'
require 'cask/source/tapped_qualified'
require 'cask/source/untapped_qualified'
require 'cask/source/tapped'
require 'cask/source/uri'

module Cask::Source
  def self.sources
    [
      Cask::Source::URI,
      Cask::Source::Path,
      Cask::Source::TappedQualified,
      Cask::Source::UntappedQualified,
      Cask::Source::Tapped,
      Cask::Source::Gone,
    ]
  end

  def self.for_query(query)
    source = sources.find { |s| s.me?(query) }
    raise CaskUnavailableError.new(query) unless source
    source.new(query)
  end
end
