cask 'wifi-explorer' do
  version '2.5.3'
  sha256 '7b69f00af8a8bc2d7f960e5039a34149cf738bfb36620f8a19f07038ba9c0c1d'

  url 'https://www.adriangranados.com/apps/wifiexplorer-download'
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
