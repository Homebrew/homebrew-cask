cask 'wifimasterkey' do
  version :latest
  sha256 :no_check

  # lianwifi.com was verified as official when first introduced to the cask
  url 'http://www.lianwifi.com/download/mac/WiFiMasterKey_Mac.dmg'
  name 'WiFi Master Key'
  name 'WiFi万能钥匙'
  homepage 'https://www.wifi.com/'

  app 'WiFiMasterKey.app'
end
