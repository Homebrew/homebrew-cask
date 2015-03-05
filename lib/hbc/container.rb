class Hbc::Container; end

require 'hbc/container/base'
require 'hbc/container/air'
require 'hbc/container/bzip2'
require 'hbc/container/cab'
require 'hbc/container/criteria'
require 'hbc/container/dmg'
require 'hbc/container/generic_unar'
require 'hbc/container/gzip'
require 'hbc/container/naked'
require 'hbc/container/otf'
require 'hbc/container/pkg'
require 'hbc/container/seven_zip'
require 'hbc/container/sit'
require 'hbc/container/tar'
require 'hbc/container/ttf'
require 'hbc/container/rar'
require 'hbc/container/xar'
require 'hbc/container/zip'

class Hbc::Container
  def self.autodetect_containers
    [
      Hbc::Container::Pkg,
      Hbc::Container::Ttf,
      Hbc::Container::Otf,
      Hbc::Container::Air,
      Hbc::Container::Cab,
      Hbc::Container::Dmg,
      Hbc::Container::SevenZip,
      Hbc::Container::Sit,
      Hbc::Container::Tar,     # or compressed tar
      Hbc::Container::Rar,
      Hbc::Container::Zip,
      Hbc::Container::Bzip2,
      Hbc::Container::Gzip,    # pure gzip, not tar/gzip
      Hbc::Container::Xar,
    ]
    # for explicit use only (never autodetected):
    # Hbc::Container::Naked
    # Hbc::Container::GenericUnar
  end

  def self.for_path(path, command)
    odebug "Determining which containers to use based on filetype"
    criteria = Hbc::Container::Criteria.new(path, command)
    autodetect_containers.find do |c|
      odebug "Checking container class #{c}"
      c.me?(criteria)
    end
  end

  def self.from_type(type)
    odebug "Determining which containers to use based on 'container :type'"
    begin
      Hbc::Container.const_get(type.to_s.split('_').map(&:capitalize).join)
    rescue NameError
      false
    end
  end
end
