cask 'wifimasterkey' do
  version :latest
  sha256 :no_check

  url 'http://www.lianwifi.com/download/mac/WiFiMasterKey_Mac.dmg'
  name 'WiFi Master Key'
  name 'WiFi万能钥匙'
  homepage 'http://www.lianwifi.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'WiFiMasterKey.app'
end
