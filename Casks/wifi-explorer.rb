cask 'wifi-explorer' do
  version '2.4.3'
  sha256 'fe375b2c8321b347984929b8d5aa22a42b610a8d027ec503205802203f29cf41'

  url 'https://www.adriangranados.com/downloads/wifiexplorer.zip'
  appcast 'https://www.adriangranados.com/appcasts/wifiexplorercast.xml',
          checkpoint: '4a8c3d58761746b7bffed335aa577481b046f8931b64571d1b66be5125544632'
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
