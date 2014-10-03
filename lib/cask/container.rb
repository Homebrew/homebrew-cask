class Cask::Container; end

require 'cask/container/base'
require 'cask/container/air'
require 'cask/container/bzip2'
require 'cask/container/cab'
require 'cask/container/criteria'
require 'cask/container/dmg'
require 'cask/container/generic_unar'
require 'cask/container/gzip'
require 'cask/container/naked'
require 'cask/container/otf'
require 'cask/container/pkg'
require 'cask/container/seven_zip'
require 'cask/container/sit'
require 'cask/container/tar'
require 'cask/container/ttf'
require 'cask/container/rar'
require 'cask/container/xar'
require 'cask/container/zip'

class Cask::Container
  def self.autodetect_containers
    [
      Cask::Container::Pkg,
      Cask::Container::Ttf,
      Cask::Container::Otf,
      Cask::Container::Air,
      Cask::Container::Cab,
      Cask::Container::Dmg,
      Cask::Container::SevenZip,
      Cask::Container::Sit,
      Cask::Container::Tar,     # or compressed tar
      Cask::Container::Rar,
      Cask::Container::Zip,
      Cask::Container::Bzip2,
      Cask::Container::Gzip,    # pure gzip, not tar/gzip
      Cask::Container::Xar,
    ]
    # for explicit use only (never autodetected):
    # Cask::Container::Naked
    # Cask::Container::GenericUnar
  end

  def self.for_path(path, command)
    odebug "Determining which containers to use based on filetype"
    criteria = Cask::Container::Criteria.new(path, command)
    autodetect_containers.find do |c|
      odebug "Checking container class #{c}"
      c.me?(criteria)
    end
  end

  def self.from_type(type)
    odebug "Determining which containers to use based on 'container :type'"
    begin
      Cask::Container.const_get(type.to_s.split('_').map(&:capitalize).join)
    rescue NameError
      false
    end
  end
end
