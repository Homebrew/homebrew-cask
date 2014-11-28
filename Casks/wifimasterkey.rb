cask :v1 => 'wifimasterkey' do
  version :latest
  sha256 :no_check

  url 'http://www.lianwifi.com/download/mac/WiFiMasterKey_Mac.dmg'
  homepage 'http://www.lianwifi.com/'
  license :unknown

  app 'WiFiMasterKey.app'
end
