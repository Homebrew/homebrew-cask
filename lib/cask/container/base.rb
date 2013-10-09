class Cask::Container::Base
  def initialize(cask, path, command)
    @cask = cask
    @path = path
    @command = command
  end
end
