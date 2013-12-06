module Cask::Source; end

require 'cask/source/gone'
require 'cask/source/path'
require 'cask/source/tap'
require 'cask/source/uri'

module Cask::Source
  def self.sources
    [
      Cask::Source::URI,
      Cask::Source::Path,
      Cask::Source::Tap,
      Cask::Source::Gone,
    ]
  end

  def self.for_query(query)
    source = sources.find { |s| s.me?(query) }
    raise CaskUnavailableError.new(query) unless source
    source.new(query)
  end
end
