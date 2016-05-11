cask 'webstorm' do
  version '2016.1.2'
  sha256 '26f48c66d0e13f97f47e21e360c5f78b94c13d6e1a46e0f96f9d3a7f26abcb3e'

  url "https://download.jetbrains.com/webstorm/WebStorm-#{version}.dmg"
  name 'WebStorm'
  homepage 'https://www.jetbrains.com/webstorm/'
  license :commercial

  app 'WebStorm.app'

  uninstall delete: '/usr/local/bin/wstorm'

  zap delete: [
                "~/.WebStorm#{version.major_minor}",
                # TODO: expand/glob for '~/Library/Preferences/jetbrains.webstorm.*.plist',
                "~/Library/Preferences/WebStorm#{version.major_minor}",
                "~/Library/Application Support/WebStorm#{version.major_minor}",
                "~/Library/Caches/WebStorm#{version.major_minor}",
                "~/Library/Logs/WebStorm#{version.major_minor}",
              ]
end
