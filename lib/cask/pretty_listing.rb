require 'cmd/list' # for homebrew's ::PrettyListing

class Cask::PrettyListing
  attr_reader :cask
  def initialize(cask)
    @cask = cask
  end

  def print
    ::PrettyListing.new(cask.destination_path)
  end
end
