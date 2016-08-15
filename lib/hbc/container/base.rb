class Hbc::Container::Base
  def initialize(cask, path, command, nested: false)
    @cask = cask
    @path = path
    @command = command
    @nested = nested
  end

  def extract_nested(source)
    container = Hbc::Container.for_path(source, @command)

    return false unless container

    ohai "Extracting nested container #{source.basename}"
    container.new(@cask, source, @command, nested: true).extract

    true
  end
end
