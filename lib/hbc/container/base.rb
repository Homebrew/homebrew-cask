class Hbc::Container::Base
  def initialize(cask, path, command)
    @cask = cask
    @path = path
    @command = command
  end

  def extract_nested(source)
    container = Hbc::Container.for_path(source, @command)

    return false unless container

    ohai "Extracting nested container #{source.basename}"
    container.new(@cask, source, @command).extract

    true
  end
end
