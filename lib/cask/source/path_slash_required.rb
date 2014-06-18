require 'cask/source/path_base'

class Cask::Source::PathSlashRequired < Cask::Source::PathBase
  def self.me?(query)
    path = self.path_for_query(query)
    path.to_s.include?('/') and path.exist?
  end
end
