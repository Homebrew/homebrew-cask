class Cask::Container::Base
  def initialize(cask, path, command)
    @cask = cask
    @path = path
    @command = command
  end

  def eula?
    !eulas.empty?
  end

  def eulas
    []
  end
end
