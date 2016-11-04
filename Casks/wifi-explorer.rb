cask 'wifi-explorer' do
  version :latest
  sha256 :no_check

  # s3.amazonaws.com/adriangranados was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/adriangranados/wifiexplorer.zip'
  name 'WiFi Explorer'
  homepage 'https://www.adriangranados.com/apps/wifi-explorer'

  app 'WiFi Explorer.app'
end
