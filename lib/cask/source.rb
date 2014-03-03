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
    odebug "Translating '#{query}' into a valid Cask source"
    source = sources.find do |s|
      odebug "Testing source class #{s}"
      s.me?(query)
    end
    raise CaskUnavailableError.new(query) unless source
    odebug "Using source class #{source}"
    source.new(query)
  end
end
