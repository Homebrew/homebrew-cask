cask 'wifi-explorer' do
  version '2.5.2'
  sha256 'e83e0c9286beabb01190c67b79ad9cba0c482d1c5d5e721476cc3082928cc927'

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
