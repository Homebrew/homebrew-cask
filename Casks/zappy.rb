cask 'zappy' do
  version '2.4.0'
  sha256 '41ceeb3bb893585b4e75021ad774640af8618565079c333acb392c520d18865c'

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
