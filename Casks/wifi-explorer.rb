cask 'wifi-explorer' do
  version '2.5.5'
  sha256 'a95d05543d9422cdafb81909ab3c706847e1380fbd9ebb6c1cb643b540488e00'

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
