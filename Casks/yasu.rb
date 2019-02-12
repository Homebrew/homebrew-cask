cask 'yasu' do
  if MacOS.version <= :el_capitan
    version '3.0.9,509'
    sha256 'bc7716b2852cdbdc02aca085b5fa70cbf5a0983ed5ff1f489de0a86348527a0e'
    url "https://yasuformac.com/appcasts/10.11/yasuformac_#{version.after_comma}.zip",
        user_agent: :fake
    appcast 'https://yasuformac.com/appcasts/10.11/yasu.xml'
  elsif MacOS.version <= :sierra
    version '4.0.5,605'
    sha256 'dc18c2ee91144bd37b94ce6bab5cf2861b698432a301d1dd03be2bba23dbd609'
    url "https://yasuformac.com/appcasts/10.12/yasuformac_#{version.after_comma}.zip",
        user_agent: :fake
    appcast 'https://yasuformac.com/appcasts/10.12/yasu.xml'
  else
    version '5.0.2,702'
    sha256 '7c0b72e59a137467259ba140024f4d93eae599d09ffe7acb71c2c8f7790530b5'
    url "https://yasuformac.com/appcasts/10.13/yasuformac_#{version.after_comma}.zip",
        user_agent: :fake
    appcast 'https://yasuformac.com/appcasts/10.13/yasu.xml'
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
