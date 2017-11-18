cask 'wifi-explorer' do
  version '2.3.2'
  sha256 '96cf78ae761e68ecf4141b919d1fa8a578e665ed678066cfcb75380dff54b990'

  # s3.amazonaws.com/apps.adriangranados.com was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/apps.adriangranados.com/wifiexplorer.zip'
  appcast 'https://www.adriangranados.com/appcasts/wifiexplorercast.xml',
          checkpoint: 'ab789ce78c00e1ba7490aa4741205244d0bb00e956e1c1d0e413a6e8449538f4'
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
