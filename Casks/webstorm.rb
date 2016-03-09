cask 'webstorm' do
  version '11.0.3'
  sha256 'b868b926cdc8138de1de9a2b6665d532df9cc16c383ee28d124590e5c2ec406f'

  url "https://download.jetbrains.com/webstorm/WebStorm-#{version}-custom-jdk-bundled.dmg"
  name 'WebStorm'
  homepage 'https://www.jetbrains.com/webstorm/'
  license :commercial

  app 'WebStorm.app'

  zap delete: [
                "~/.WebStorm#{version.major}",
                '~/Library/Preferences/com.jetbrains.webstorm.plist',
                "~/Library/Preferences/WebStorm#{version.major}",
                "~/Library/Application Support/WebStorm#{version.major}",
                "~/Library/Caches/WebStorm#{version.major}",
                "~/Library/Logs/WebStorm#{version.major}",
              ]
end
