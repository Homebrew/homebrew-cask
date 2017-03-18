cask 'webstorm' do
  version '2016.3.5'
  sha256 '46fcb9df1883a7a7d52ba654d69c8b0fbeac8a0cccb1513291dfe159c375fd84'

  url "https://download.jetbrains.com/webstorm/WebStorm-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=WS&latest=true&type=release',
          checkpoint: '9bd3b9ce9ced679cd8a48ce2a23c78c1cc91ff1716e6d19bfc8d009ae0b0cd17'
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
