require 'digest'

class Cask::Installer
  def initialize(cask, command=Cask::SystemCommand)
    @cask = cask
    @command = command
  end

  def install(force=false)
    if @cask.installed? && !force
      raise CaskAlreadyInstalledError.new(@cask)
    end

    download
    extract_container
    install_artifacts

    ohai "Success! #{@cask} installed to #{@cask.destination_path}"

    print_caveats
  end


  def download
    download = Cask::Download.new(@cask)
    @downloaded_path = download.perform
  end

  def extract_container
    FileUtils.mkdir_p @cask.destination_path
    container = Cask::Container.for_path(@downloaded_path, @command)
    unless container
      raise "uh oh, could not identify container for #{@downloaded_path}"
    end
    container.new(@cask, @downloaded_path, @command).extract
  end

  def install_artifacts
    artifacts = Cask::Artifact.for_cask(@cask)
    artifacts.each do |artifact|
      artifact.new(@cask, @command).install
    end
  end

  def print_caveats
    unless @cask.caveats.empty?
      ohai 'Caveats', @cask.caveats
    end
  end

  def uninstall
    uninstall_artifacts
    purge_files
  end

  def uninstall_artifacts
    artifacts = Cask::Artifact.for_cask(@cask)
    artifacts.each do |artifact|
      artifact.new(@cask, @command).uninstall
    end
  end

  def purge_files
    @cask.destination_path.rmtree
  end
end
