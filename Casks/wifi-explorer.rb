cask 'wifi-explorer' do
  version '2.6.1'
  sha256 'e282dc6d2dc631a9801866f9ef9ca4457aeaec32d37775191b084289b3151679'

  url "https://www.intuitibits.com/downloads/WiFiExplorer_#{version}.dmg"
  appcast 'https://www.intuitibits.com/appcasts/wifiexplorercast.xml'
  name 'WiFi Explorer'
  homepage 'https://www.intuitibits.com/products/wifi-explorer/'

  app 'WiFi Explorer.app'

  zap trash: [
               '~/Library/Caches/wifiexplorer',
               '~/Library/Cookies/wifiexplorer.binarycookies',
               '~/Library/Preferences/wifiexplorer.plist',
               '~/Library/Saved Application State/wifiexplorer.savedState',
             ]
end
