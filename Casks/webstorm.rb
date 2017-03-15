cask 'webstorm' do
  version '2016.3.4'
  sha256 '8eda2a108c651eb777762c0cc9f1665ee56f9b8be5b5a4ff1b3fa5da79d3e557'

  url "https://download.jetbrains.com/webstorm/WebStorm-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=WS&latest=true&type=release',
          checkpoint: 'a99907511266aa2f2b38010086996bef99aea4e7a863e7f7cf7772da7d829f50'
  name 'WebStorm'
  homepage 'https://www.jetbrains.com/webstorm/'

  auto_updates true
  conflicts_with cask: 'webstorm-eap'

  app 'WebStorm.app'

  uninstall delete: '/usr/local/bin/wstorm'

  zap delete: [
                "~/Library/Application Support/WebStorm#{version.major_minor}",
                "~/Library/Caches/WebStorm#{version.major_minor}",
                "~/Library/Logs/WebStorm#{version.major_minor}",
                "~/Library/Preferences/WebStorm#{version.major_minor}",
                '~/Library/Preferences/jetbrains.webstorm.aaac0500.plist',
                '~/Library/Saved Application State/com.jetbrains.WebStorm.savedState',
              ]
end
