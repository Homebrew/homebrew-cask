cask 'zappy' do
  version '2.2.0'
  sha256 '41945a082193d1bd8b32856cb81ce083e0c42f48c4ab2aca626b64c93d6f3c8a'

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
