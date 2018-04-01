cask 'touche' do
  version '1.1.2'
  sha256 '3836f2016efb846f8cdb8e15afa579ed3352c39e4107cb5045c46bf045a546ed'

  # redsweater.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://redsweater.s3.amazonaws.com/Touche#{version}.zip"
  appcast 'https://red-sweater.com/touche/appcast.php',
          checkpoint: '8dcc3d671b2df9c2889801fed2d42ee2ebde6a61042b5559027dac6cfa5c6a38'
  name 'Touché'
  homepage 'https://red-sweater.com/touche/'

  app 'Touché.app'

  zap trash: [
               '~/Library/Containers/com.red-sweater.touche',
               '~/Library/Preferences/com.red-sweater.touche.plist',
             ]
end
