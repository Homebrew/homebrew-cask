require 'cask/source/path_base'

class Cask::Source::PathSlashOptional < Cask::Source::PathBase
  def self.me?(query)
    path = self.path_for_query(query)
    path.exist?
  end
end
