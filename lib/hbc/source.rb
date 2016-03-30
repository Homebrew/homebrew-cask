module Hbc::Source; end

require 'hbc/source/gone'
require 'hbc/source/path_slash_required'
require 'hbc/source/path_slash_optional'
require 'hbc/source/tapped_qualified'
require 'hbc/source/untapped_qualified'
require 'hbc/source/tapped'
require 'hbc/source/uri'

module Hbc::Source
  def self.sources
    [
      Hbc::Source::URI,
      Hbc::Source::PathSlashRequired,
      Hbc::Source::TappedQualified,
      Hbc::Source::UntappedQualified,
      Hbc::Source::Tapped,
      Hbc::Source::PathSlashOptional,
      Hbc::Source::Gone,
    ]
  end

  def self.for_query(query)
    odebug "Translating '#{query}' into a valid Cask source"
    source = sources.find do |s|
      odebug "Testing source class #{s}"
      s.me?(query)
    end
    raise Hbc::CaskUnavailableError.new(query) unless source
    odebug "Success! Using source class #{source}"
    resolved_cask_source = source.new(query)
    odebug "Resolved Cask URI or file source to '#{resolved_cask_source}'"
    resolved_cask_source
  end
end
