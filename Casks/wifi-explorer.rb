cask 'wifi-explorer' do
  version '2.5.4'
  sha256 '2dd3a6b42977c77aaa3df7800313306feed172cedbfd58e4b48db737feb42870'

  url "https://www.adriangranados.com/downloads/wifiexplorer_#{version}.zip"
  appcast 'https://www.adriangranados.com/appcasts/wifiexplorercast.xml'
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
