module Cask::Source; end

require 'cask/source/path'
require 'cask/source/tap'
require 'cask/source/uri'

module Cask::Source
  def self.sources
    [
      Cask::Source::URI,
      Cask::Source::Path,
      Cask::Source::Tap,
    ]
  end

  def self.for_query(query)
    sources.find { |source| source.me?(query) }.new(query)
  end
end
