require 'hbc/container/tar'
require 'hbc/container/gzip'
require 'zlib'

class Hbc::Container::TarGzip < Hbc::Container::Tar
  def self.me?(criteria)
    Hbc::Container::Gzip.me?(criteria) &&
      criteria.magic_number(257, 6, "ustar\0", Zlib::GzipReader.open(criteria.path))
  end
end
