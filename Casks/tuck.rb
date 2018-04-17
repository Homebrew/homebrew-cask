cask 'tuck' do
  version '1.0'
  sha256 '7e7822e3a7d7eb932f58e770aee31f778164784e151dbc36ab997be4107804ed'

  url "https://www.irradiatedsoftware.com/downloads/Tuck_#{version}.zip"
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/tuck.php',
          checkpoint: '9b7c8e54b14cf0c58f6c55fccdc7a553552045eb93fbfdda32311cf4c51c6084'
  name 'Tuck'
  homepage 'https://www.irradiatedsoftware.com/labs/'

  app 'Tuck.app'

  zap trash: [
               '~/Library/Preferences/com.irradiatedsoftware.Tuck.plist',
             ]
end
