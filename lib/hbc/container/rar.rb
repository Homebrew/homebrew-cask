require "hbc/container/generic_unar"

class Hbc::Container::Rar < Hbc::Container::GenericUnar
  def self.me?(criteria)
    criteria.magic_number(%r{^Rar!}n) &&
      super
  end
end
