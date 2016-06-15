require 'hbc/container/tar'
require 'hbc/container/bzip2'

class Hbc::Container::TarBzip2 < Hbc::Container::Tar
  def self.me?(criteria)
    Hbc::Container::Bzip2.me?(criteria) &&
      criteria.magic_number(257, 6, "ustar\0", IO.popen(['/usr/bin/bunzip2', '-c', criteria.path.to_s, :err => :out]))
  end
end
