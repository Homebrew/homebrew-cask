cask 'wifi-explorer' do
  version '2.2'
  sha256 '8048497e3d260fd25145d292712b796b0089a288a6e9b1f08cd63a87795c2921'

  # s3.amazonaws.com/adriangranados was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/adriangranados/wifiexplorer.zip'
  appcast 'https://www.adriangranados.com/appcasts/wifiexplorercast.xml',
          checkpoint: 'f4927495fab130078eca3eedfd7fea32122d724d95503c3d7a8a7105aea64230'
  name 'WiFi Explorer'
  homepage 'https://www.adriangranados.com/apps/wifi-explorer'

  app 'WiFi Explorer.app'
end
