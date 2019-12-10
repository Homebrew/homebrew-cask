cask 'wifi-explorer' do
  version '2.6'
  sha256 'd9d0712b73d4d32cb6380ce7ba88d458f5f2b81bbcf06f9784f708b658a39724'

  url "https://www.adriangranados.com/downloads/WiFiExplorer_#{version}.zip"
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
