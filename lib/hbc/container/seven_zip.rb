require "hbc/container/generic_unar"

class Hbc::Container::SevenZip < Hbc::Container::GenericUnar
  def self.me?(criteria)
    # TODO: cover self-extracting archives
    criteria.magic_number(%r{^7z}n) &&
      super
  end
end
