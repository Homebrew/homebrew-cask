class Cask::Container; end

require 'cask/container/base'
require 'cask/container/cab'
require 'cask/container/criteria'
require 'cask/container/dmg'
require 'cask/container/naked'
require 'cask/container/tar'
require 'cask/container/zip'

class Cask::Container
  def self.containers
    [
      Cask::Container::Cab,
      Cask::Container::Dmg,
      Cask::Container::Tar,
      Cask::Container::Zip,
      Cask::Container::Naked,
    ]
  end

  def self.for_path(path, command)
    odebug "Determining which containers to use"
    criteria = Cask::Container::Criteria.new(path, command)
    containers.find do |c|
      odebug "Checking container class #{c}"
      c.me?(criteria)
    end
  end
end
