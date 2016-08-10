require "hbc/container/naked"

class Hbc::Container::Otf < Hbc::Container::Naked
  def self.me?(criteria)
    criteria.magic_number(%r{^OTTO}n)
  end
end
