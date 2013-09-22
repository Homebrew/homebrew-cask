class Cask::Container; end

require 'cask/container/base'
require 'cask/container/criteria'
require 'cask/container/dmg'
require 'cask/container/naked'
require 'cask/container/tar'
require 'cask/container/zip'

class Cask::Container
  def self.containers
    [
      Cask::Container::Dmg,
      Cask::Container::Tar,
      Cask::Container::Zip,
      Cask::Container::Naked,
    ]
  end

  def self.for_path(path, command)
    criteria = Cask::Container::Criteria.new(path, command)
    containers.find { |c| c.me?(criteria) }
  end
end
