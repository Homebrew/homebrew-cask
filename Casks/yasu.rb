cask 'yasu' do
  if MacOS.version <= :snow_leopard
    version '2.8.2'
    sha256 '427672a45b8315c2f38d968ea5e0c35c21b91091a1fe0e750fcd2b0078644336'
    url "https://yasuformac.com/downloads/yasu_#{version}.zip"
    app 'Yasu.app'
  elsif MacOS.version <= :yosemite
    version '2.9.3'
    sha256 'd7bfd57c28a7d0fc364dc911532946b71f20d50b3fc594df4f31db59559a783a'
    url "https://yasuformac.com/appcasts/10.10/Yasu_#{version}.zip"
    appcast 'https://yasuformac.com/appcasts/10.10/yasu.xml',
            checkpoint: 'd6df936cb2e8971eea6f4a0f3f8652d96faabd09c394386394944b85363d1507'
    app 'Yasu.app'
  elsif MacOS.version <= :el_capitan
    version '3.0.4,504'
    sha256 'f1bd1e48a2ff0e9839f4b21c651e89a4e18d8aa85a9b9fa8642f333ef5b0053b'
    url "https://yasuformac.com/appcasts/10.11/yasuformac_#{version.after_comma}.zip"
    appcast 'https://yasuformac.com/appcasts/10.11/yasu.xml',
            checkpoint: '1349d309621d03caef39dc1b2edadc0638926dd8c4899eef9073b19c7f59666b'
    app 'Yasu for Mac.app'
  else
    version '4.0.2,602'
    sha256 'db0951295b8e9b9d8fc4dfd37795b8261bbd1c79b218d260c9532f78b47abc14'
    url "https://yasuformac.com/appcasts/10.12/yasuformac_#{version.after_comma}.zip"
    appcast 'https://yasuformac.com/appcasts/10.12/yasu.xml',
            checkpoint: '5590958819d56aebfda1294628cb453117247a63355d7607e1e26de7264aea19'
    app 'Yasu for Mac.app'
  end

  name 'Yasu'
  homepage 'https://yasuformac.com/'

  depends_on macos: '>= :tiger'

  zap delete: [
                '~/Library/Caches/com.apple.helpd/Generated/net.yasuapp.yasu.help',
                '~/Library/Caches/net.yasuapp.yasu',
                '~/Library/Logs/Yasu.log',
                '~/Library/Preferences/net.yasuapp.yasu.plist',
                '~/Library/Preferences/org.jimmitchell.yasu.plist',
              ]
end
