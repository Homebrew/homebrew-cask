cask 'webstorm' do
  version '2016.3.2'
  sha256 'dff270f0293685660bc3beb13765e4d9b840b92a06b9aa02414282bda4853b41'

  url "https://download.jetbrains.com/webstorm/WebStorm-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=WS&latest=true&type=release',
          checkpoint: '8b57d4fdf9a6c8233cc202a582fd5ff01185a5c307b41d2844c85becac0aced8'
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
