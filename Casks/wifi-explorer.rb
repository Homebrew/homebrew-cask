cask 'wifi-explorer' do
  version '2.4.2'
  sha256 'e8cf9fcca78fd14bcc1defcfac543dabdb2fc0a2618c5e9e1d55112e22e92391'

  url 'https://www.adriangranados.com/downloads/wifiexplorer.zip'
  appcast 'https://www.adriangranados.com/appcasts/wifiexplorercast.xml',
          checkpoint: '8f791a1f9cfb92a2c85ca9d28050e1a38ecd09d4261edce53629c04defcb9e22'
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
