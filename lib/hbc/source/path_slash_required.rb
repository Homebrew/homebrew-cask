require "hbc/source/path_base"

class Hbc::Source::PathSlashRequired < Hbc::Source::PathBase
  def self.me?(query)
    path = path_for_query(query)
    path.to_s.include?("/") && path.exist?
  end
end
