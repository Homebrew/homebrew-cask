cask 'webstorm' do
  version '11.0.2'
  sha256 '43e0352fee07fa5b92dd22e557cb1d050ccde0cf97273e02f694930695b15134'

  url "https://download.jetbrains.com/webstorm/WebStorm-#{version}-custom-jdk-bundled.dmg"
  name 'WebStorm'
  homepage 'http://www.jetbrains.com/webstorm/'
  license :commercial

  app 'WebStorm.app'

  zap :delete => [
                  '~/.WebStorm11',
                  '~/Library/Preferences/com.jetbrains.webstorm.plist',
                  '~/Library/Preferences/WebStorm11',
                  '~/Library/Application Support/WebStorm11',
                  '~/Library/Caches/WebStorm11',
                  '~/Library/Logs/WebStorm11',
                 ]
end
