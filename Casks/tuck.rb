cask 'tuck' do
  version :latest
  sha256 :no_check

  url 'https://www.irradiatedsoftware.com/downloads/Tuck.zip'
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/tuck.php',
          :checkpoint => '9b7c8e54b14cf0c58f6c55fccdc7a553552045eb93fbfdda32311cf4c51c6084'
  name 'Tuck'
  homepage 'https://www.irradiatedsoftware.com/labs/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Tuck.app'

  zap :delete => [
                   '~/Library/Preferences/com.irradiatedsoftware.Tuck.plist'
                 ]
end
