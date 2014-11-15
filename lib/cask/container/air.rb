class Cask::Container::Air < Cask::Container::Base
  def self.me?(criteria)
    %w[.air].include?(criteria.path.extname)
  end

  def self.installer_cmd
    @installer_cmd ||= if installer_exist?
      _installer_pathname
    else
      raise CaskError.new <<-ERRMSG.undent
        Adobe AIR runtime not present, try installing it via

            brew cask install adobe-air

        ERRMSG
    end
  end

  def self.installer_exist?
    _installer_pathname.exist?
  end

  def self._installer_pathname
    @_installer_pathname ||= Pathname.new('/Applications/Utilities/Adobe AIR Application Installer.app/Contents/MacOS/Adobe AIR Application Installer')
  end

  def extract
    @command.run!(self.class.installer_cmd,
                  :args => ['-silent', '-location', @cask.staged_path, Pathname.new(@path).realpath])
  end
end
