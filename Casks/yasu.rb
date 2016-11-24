cask 'yasu' do
  if MacOS.version <= '10.11'
    version '504'
    sha256 'f1bd1e48a2ff0e9839f4b21c651e89a4e18d8aa85a9b9fa8642f333ef5b0053b'
    url "https://yasuformac.com/appcasts/10.11/yasuformac_#{version}.zip"
  else
    version '602'
    sha256 'db0951295b8e9b9d8fc4dfd37795b8261bbd1c79b218d260c9532f78b47abc14'
    url "https://yasuformac.com/appcasts/10.12/yasuformac_#{version}.zip"
  end

  name 'Yasu'
  homepage 'https://yasuformac.com/'

  depends_on macos: '>= 10.11'

  app 'Yasu for Mac.app'

  zap delete: [
                '~/Library/Caches/com.apple.helpd/Generated/net.yasuapp.yasu.help',
                '~/Library/Caches/net.yasuapp.yasu',
                '~/Library/Logs/Yasu.log',
                '~/Library/Preferences/net.yasuapp.yasu.plist',
                '~/Library/Preferences/org.jimmitchell.yasu.plist',
              ]

end
