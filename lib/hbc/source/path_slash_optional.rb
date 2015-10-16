require 'hbc/source/path_base'

class Hbc::Source::PathSlashOptional < Hbc::Source::PathBase
  def self.me?(query)
    path = self.path_for_query(query)
    path.exist?
  end
end
