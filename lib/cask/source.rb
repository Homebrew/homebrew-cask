module Cask::Source; end

require 'cask/source/gone'
require 'cask/source/path_slash_required'
require 'cask/source/path_slash_optional'
require 'cask/source/tapped_qualified'
require 'cask/source/untapped_qualified'
require 'cask/source/tapped'
require 'cask/source/uri'

module Cask::Source
  def self.sources
    [
      Cask::Source::URI,
      Cask::Source::PathSlashRequired,
      Cask::Source::TappedQualified,
      Cask::Source::UntappedQualified,
      Cask::Source::Tapped,
      Cask::Source::PathSlashOptional,
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
    odebug "Success! Using source class #{source}"
    resolved_cask_source = source.new(query)
    odebug "Resolved Cask URI or file source to '#{resolved_cask_source}'"
    resolved_cask_source
  end
end
