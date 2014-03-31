class Cask::Artifact::NestedContainer < Cask::Artifact::Base
  def install
    @cask.artifacts[:nested_container].each { |container| extract(container) }
  end

  def uninstall
    # no need to take action; we will get removed by rmtree of parent
  end

  def extract(container_relative_path)
    source = @cask.destination_path.join(container_relative_path)
    container = Cask::Container.for_path(source, @command)
    unless container
      raise CaskError.new "Aw dang, could not identify nested_container at '#{source}'"
    end
    ohai "Extracting nested container #{source.basename}"
    container.new(@cask, source, @command).extract
  end
end
