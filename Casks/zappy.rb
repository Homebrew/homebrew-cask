cask 'zappy' do
  version '2.5.2'
  sha256 'f690b152a2c42b0dba76c6fd59a2ae473182eece7c9e8751c65ab81083f7a7b6'

  url "https://zappy.zapier.com/releases/zappy-#{version}.zip"
  appcast 'https://zappy.zapier.com/releases/appcast.xml'
  name 'Zappy'
  homepage 'https://zapier.com/zappy'

  auto_updates true

  app 'Zappy.app'

  uninstall quit: 'com.blackbeltlabs.Zappy'

  zap trash: [
               '~/Library/Application Support/com.blackbeltlabs.Zappy',
               '~/Library/Caches/com.blackbeltlabs.Zappy',
               '~/Library/Preferences/com.blackbeltlabs.Zappy.plist',
               '~/Library/zappy',
             ]
end
