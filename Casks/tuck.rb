cask 'tuck' do
  version :latest
  sha256 :no_check

  url 'https://www.irradiatedsoftware.com/downloads/Tuck.zip'
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/tuck.php',
          :sha256 => '41f3671d34410e0dc854ccc02aa1b8e2699e3755fe070185e408c19edff61c94'
  name 'Tuck'
  homepage 'https://www.irradiatedsoftware.com/labs/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Tuck.app'

  zap :delete => [
                   '~/Library/Preferences/com.irradiatedsoftware.Tuck.plist'
                 ]
end
