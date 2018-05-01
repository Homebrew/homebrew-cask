cask 'wifi-explorer' do
  version '2.4'
  sha256 'b07d82556ecb9c5c8972d7973a67350557a6c5b809d078621b0554f1899ca743'

  url 'https://www.adriangranados.com/downloads/wifiexplorer.zip'
  appcast 'https://www.adriangranados.com/appcasts/wifiexplorercast.xml',
          checkpoint: '2f72129a614ac55361cfc9563dc3ac7cb081c464599276ae634f091891f7c6e6'
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
