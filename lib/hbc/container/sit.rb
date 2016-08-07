require "hbc/container/generic_unar"

class Hbc::Container::Sit < Hbc::Container::GenericUnar
  def self.me?(criteria)
    criteria.magic_number(%r{^StuffIt}n) &&
      super
  end
end
