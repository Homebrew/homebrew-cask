class Cask::Source::Gone
  def self.me?(query)
    Cask::WithoutSource.new(query).installed?
  end

  attr_reader :query

  def initialize(query)
    @query = query
  end

  def load
    Cask::WithoutSource.new(query)
  end
end
