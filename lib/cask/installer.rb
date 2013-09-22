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

    download = Cask::Download.new(@cask)
    downloaded_path = download.perform

    FileUtils.mkdir_p @cask.destination_path

    container = Cask::Container.for_path(downloaded_path, @command)
    unless container
      raise "uh oh, could not identify container for #{downloaded_path}"
    end
    container.new(@cask, downloaded_path, @command).extract

    ohai "Success! #{@cask} installed to #{@cask.destination_path}"

    unless @cask.caveats.empty?
      ohai 'Caveats', @cask.caveats
    end
  end

  def uninstall
    @cask.destination_path.rmtree
  end
end
