class Hbc::Source::Gone
  def self.me?(query)
    Hbc::WithoutSource.new(query).installed?
  end

  attr_reader :query

  def initialize(query)
    @query = query
  end

  def load
    Hbc::WithoutSource.new(query)
  end

  def to_s
    ''
  end
end
