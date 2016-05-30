cask 'webstorm' do
  version '2016.1.3'
  sha256 '3ef891ccae0061a9ed0652a042af871e69a1fd6566b69a513ea2a591f7048f97'

  url "https://download.jetbrains.com/webstorm/WebStorm-#{version}.dmg"
  name 'WebStorm'
  homepage 'https://www.jetbrains.com/webstorm/'
  license :commercial

  conflicts_with cask: 'webstorm-eap'

  app 'WebStorm.app'

  uninstall delete: '/usr/local/bin/wstorm'

  zap delete: [
                "~/.WebStorm#{version.major_minor}",
                "~/Library/Preferences/WebStorm#{version.major_minor}",
                "~/Library/Application Support/WebStorm#{version.major_minor}",
                "~/Library/Caches/WebStorm#{version.major_minor}",
                "~/Library/Logs/WebStorm#{version.major_minor}",
              ]
end
