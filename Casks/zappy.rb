cask 'zappy' do
  version '2.5.0'
  sha256 'fa7b19b1d0cfdaf22027a81f851b4b130cff068af6e6abb670a44895b10e1f84'

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
