class Cask::Artifact::Base
  def initialize(cask, command=Cask::SystemCommand)
    @cask = cask
    @command = command
  end
end
