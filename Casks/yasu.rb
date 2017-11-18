cask 'yasu' do
  if MacOS.version <= :el_capitan
    version '3.0.4,504'
    sha256 'f1bd1e48a2ff0e9839f4b21c651e89a4e18d8aa85a9b9fa8642f333ef5b0053b'
    url "https://yasuformac.com/appcasts/10.11/yasuformac_#{version.after_comma}.zip",
        user_agent: :fake
    appcast 'https://yasuformac.com/appcasts/10.11/yasu.xml',
            checkpoint: 'd13bbaeca2a2c3610fa770ed3b2080fa040f525bbcc15c144d1802ecaf3ee487'
  elsif MacOS.version <= :sierra
    version '4.0.5,605'
    sha256 'dc18c2ee91144bd37b94ce6bab5cf2861b698432a301d1dd03be2bba23dbd609'
    url "https://yasuformac.com/appcasts/10.12/yasuformac_#{version.after_comma}.zip",
        user_agent: :fake
    appcast 'https://yasuformac.com/appcasts/10.12/yasu.xml',
            checkpoint: '53e665930618eaff3dabec8946d5884d8d25f949001a83516faf700d60a27e26'
  else
    version '5.0.1,701'
    sha256 '1fee2a849d9473b3d4776cf275ba48403a9b2c641077d4f4b61cd331d7f6459f'
    url "https://yasuformac.com/appcasts/10.13/yasuformac_#{version.after_comma}.zip",
        user_agent: :fake
    appcast 'https://yasuformac.com/appcasts/10.13/yasu.xml',
            checkpoint: '466c7e40951036fe7137b65c09d77fd42020face479abadfdc4b9d5e1c9a4cfc'
  end

  name 'Yasu'
  homepage 'https://yasuformac.com/'

  depends_on macos: '>= :el_capitan'

  app 'Yasu for Mac.app'

  zap trash: [
               '~/Library/Caches/com.apple.helpd/Generated/net.yasuapp.yasu.help*',
               '~/Library/Caches/net.yasuapp.yasu',
               '~/Library/Logs/Yasu.log',
               '~/Library/Preferences/net.yasuapp.yasu.plist',
               '~/Library/Preferences/org.jimmitchell.yasu.plist',
             ]
end
