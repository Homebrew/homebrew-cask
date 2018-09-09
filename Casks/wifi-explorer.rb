cask 'wifi-explorer' do
  version '2.5'
  sha256 '28994dc73e78440544e0340f13eedea20eb6097763a3fdb44ef272d4a969fc43'

  url 'https://www.adriangranados.com/downloads/wifiexplorer.zip'
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
