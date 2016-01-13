cask 'tuck' do
  version :latest
  sha256 :no_check

  url 'https://www.irradiatedsoftware.com/downloads/Tuck.zip'
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/tuck.php',
          :checkpoint => 'b1ec4543effcea93cedbcdcf01ebcf8814b7cac5d49ee459d86a2e11444a7da1'
  name 'Tuck'
  homepage 'https://www.irradiatedsoftware.com/labs/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Tuck.app'

  zap :delete => [
                   '~/Library/Preferences/com.irradiatedsoftware.Tuck.plist'
                 ]
end
