class Hbc::Artifact::NestedContainer < Hbc::Artifact::Base
  def install_phase
    @cask.artifacts[:nested_container].each { |container| extract(container) }
  end

  def uninstall_phase
    # no need to take action; we will get removed by rmtree of parent
  end

  def extract(container_relative_path)
    source = @cask.staged_path.join(container_relative_path)
    container = Hbc::Container.for_path(source, @command)
    unless container
      raise Hbc::CaskError.new "Aw dang, could not identify nested container at '#{source}'"
    end
    ohai "Extracting nested container #{source.basename}"
    container.new(@cask, source, @command).extract
  end
end
