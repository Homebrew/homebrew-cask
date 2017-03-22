cask 'yasu' do
  if MacOS.version <= :yosemite
    version '2.9.3'
    sha256 'd7bfd57c28a7d0fc364dc911532946b71f20d50b3fc594df4f31db59559a783a'
    url "https://yasuformac.com/appcasts/10.10/Yasu_#{version}.zip",
        user_agent: :fake
    appcast 'https://yasuformac.com/appcasts/10.10/yasu.xml',
            checkpoint: 'd6df936cb2e8971eea6f4a0f3f8652d96faabd09c394386394944b85363d1507'
    app 'Yasu.app'
  elsif MacOS.version <= :el_capitan
    version '3.0.4,504'
    sha256 'f1bd1e48a2ff0e9839f4b21c651e89a4e18d8aa85a9b9fa8642f333ef5b0053b'
    url "https://yasuformac.com/appcasts/10.11/yasuformac_#{version.after_comma}.zip",
        user_agent: :fake
    appcast 'https://yasuformac.com/appcasts/10.11/yasu.xml',
            checkpoint: 'd13bbaeca2a2c3610fa770ed3b2080fa040f525bbcc15c144d1802ecaf3ee487'
    app 'Yasu for Mac.app'
  else
    version '4.0.2,602'
    sha256 'db0951295b8e9b9d8fc4dfd37795b8261bbd1c79b218d260c9532f78b47abc14'
    url "https://yasuformac.com/appcasts/10.12/yasuformac_#{version.after_comma}.zip",
        user_agent: :fake
    appcast 'https://yasuformac.com/appcasts/10.12/yasu.xml',
            checkpoint: 'bdbef00a431e551842dc2a953e2abdf46cb3dc036e06c91b35ca245d55e99995'
    app 'Yasu for Mac.app'
  end

  name 'Yasu'
  homepage 'https://yasuformac.com/'

  depends_on macos: '>= :lion'

  zap delete: [
                '~/Library/Caches/com.apple.helpd/Generated/net.yasuapp.yasu.help',
                '~/Library/Caches/net.yasuapp.yasu',
                '~/Library/Logs/Yasu.log',
                '~/Library/Preferences/net.yasuapp.yasu.plist',
                '~/Library/Preferences/org.jimmitchell.yasu.plist',
              ]
end
