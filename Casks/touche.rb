cask 'touche' do
  version '1.1.1'
  sha256 '1430c9c7fdb2fe13981b2b182fd81f209e8bde971b6a220f64d47297072059ba'

  # redsweater.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://redsweater.s3.amazonaws.com/Touche#{version}.zip"
  appcast 'https://red-sweater.com/touche/appcast.php',
          checkpoint: '2221cef86f61ed01bdd44df1e8b2cd7052adec9dce235f845548b808d97843e7'
  name 'Touché'
  homepage 'https://red-sweater.com/touche/'

  app 'Touché.app'

  zap delete: [
                '~/Library/Containers/com.red-sweater.touche',
                '~/Library/Preferences/com.red-sweater.touche.plist',
              ]
end
