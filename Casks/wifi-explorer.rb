cask 'wifi-explorer' do
  version '2.3.3'
  sha256 '1482e44c892c89de0f449778b9414db02960de302bbaded4f52e4931002341aa'

  # s3.amazonaws.com/apps.adriangranados.com was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/apps.adriangranados.com/wifiexplorer.zip'
  appcast 'https://www.adriangranados.com/appcasts/wifiexplorercast.xml',
          checkpoint: 'ea19112b9a7fdf2ec468459e33e513bd008a7438700e6c7f2c12a5df91148b4f'
  name 'WiFi Explorer'
  homepage 'https://www.adriangranados.com/apps/wifi-explorer'

  app 'WiFi Explorer.app'

  zap trash: [
               '~/Library/Caches/wifiexplorer',
               '~/Library/Cookies/wifiexplorer.binarycookies',
               '~/Library/Preferences/wifiexplorer.plist',
               '~/Library/Saved Application State/wifiexplorer.savedState',
             ]
end
