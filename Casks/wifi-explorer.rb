cask 'wifi-explorer' do
  version '2.3.1'
  sha256 '7c89a610b88e396ecbfea3c837463fa9493f1a1ec753d4d0644ad9909742edfb'

  # s3.amazonaws.com/apps.adriangranados.com was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/apps.adriangranados.com/wifiexplorer.zip'
  appcast 'https://www.adriangranados.com/appcasts/wifiexplorercast.xml',
          checkpoint: 'ffbc98d5db6d4eb7d5bbdd71b9bafe11ff718070a12624ab0798fd32cd48974b'
  name 'WiFi Explorer'
  homepage 'https://www.adriangranados.com/apps/wifi-explorer'

  app 'WiFi Explorer.app'
end
