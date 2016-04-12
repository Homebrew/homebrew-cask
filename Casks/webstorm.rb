cask 'webstorm' do
  version '2016.1.1'
  sha256 '63540be270ef19adf5b40f3c9b00cf0cabc9f61d2341c97d84c5d35b04cb68ba'

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
