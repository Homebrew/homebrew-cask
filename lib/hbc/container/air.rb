class Hbc::Container::Air < Hbc::Container::Base
  def self.me?(criteria)
    %w[.air].include?(criteria.path.extname)
  end

  def self.installer_cmd
    @installer_cmd ||= if installer_exist?
      _installer_pathname
    else
      raise Hbc::CaskError.new <<-ERRMSG.undent
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
    install = @command.run(self.class.installer_cmd,
                           :args => ['-silent', '-location', @cask.staged_path, Pathname.new(@path).realpath])

    if install.exit_status == 9 then
      raise Hbc::CaskError.new "Adobe AIR application #{@cask} already exists on the system, and cannot be reinstalled."
    end
  end
end
