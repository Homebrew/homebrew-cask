cask :v1 => 'tuck' do
  version :latest
  sha256 :no_check

  url 'https://www.irradiatedsoftware.com/downloads/Tuck.zip'
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/tuck.php'
  name 'Tuck'
  homepage 'https://www.irradiatedsoftware.com/labs/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Tuck.app'

  zap :delete => [
                  '~/Library/Preferences/com.irradiatedsoftware.Tuck.plist',
                 ]
end
