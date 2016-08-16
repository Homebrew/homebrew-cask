class Hbc::Container::Base
  def initialize(cask, path, command, nested: false)
    @cask = cask
    @path = path
    @command = command
    @nested = nested
  end

  def extract_nested_inside(dir)
    children = Pathname.new(dir).children

    nested_container = children[0]

    unless children.count == 1 &&
           !nested_container.directory? &&
           @cask.artifacts[:nested_container].empty? &&
           extract_nested_container(nested_container)

      children.each do |src|
        dest = @cask.staged_path.join(src.basename)
        FileUtils.rm_r(dest) if dest.exist?
        FileUtils.mv(src, dest)
      end
    end
  end

  def extract_nested_container(source)
    container = Hbc::Container.for_path(source, @command)

    return false unless container

    ohai "Extracting nested container #{source.basename}"
    container.new(@cask, source, @command, nested: true).extract

    true
  end
end
