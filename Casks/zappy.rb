cask 'zappy' do
  version '2.1.3'
  sha256 '1ca6c8f602e85a0ebd2987df4e6e409a2a42a713daafd1ac3d2d0d0c27b7ad48'

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
