require "hbc/container/naked"

class Hbc::Container::Pkg < Hbc::Container::Naked
  def self.me?(criteria)
    criteria.extension(%r{m?pkg$}) &&
      (criteria.path.directory? ||
       criteria.magic_number(%r{^xar!}n))
  end
end
