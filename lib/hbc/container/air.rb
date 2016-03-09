class Hbc::Container::Air < Hbc::Container::Base
  INSTALLER_PATHNAME =
    Pathname('/Applications/Utilities/Adobe AIR Application Installer.app' \
             '/Contents/MacOS/Adobe AIR Application Installer')

  def self.me?(criteria)
    %w[.air].include?(criteria.path.extname)
  end

  def self.installer_cmd
    @installer_cmd ||= if installer_exist?
      INSTALLER_PATHNAME
    else
      raise Hbc::CaskError.new <<-ERRMSG.undent
        Adobe AIR runtime not present, try installing it via

            brew cask install adobe-air

        ERRMSG
    end
  end

  def self.installer_exist?
    INSTALLER_PATHNAME.exist?
  end

  def extract
    install = @command.run(self.class.installer_cmd,
                           :args => ['-silent', '-location', @cask.staged_path, Pathname.new(@path).realpath])

    if install.exit_status == 9 then
      raise Hbc::CaskError.new "Adobe AIR application #{@cask} already exists on the system, and cannot be reinstalled."
    end
  end
end
