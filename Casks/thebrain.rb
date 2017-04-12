cask 'thebrain' do
  version '8.0.2.2'
  sha256 '4832c6b703ee0f24069953627f175e0bba84974427806454d75097befcbfb04c'

  url "http://assets.thebrain.com/downloads/TheBrain_macos_JRE_#{version.dots_to_underscores}.dmg"
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  installer script: {
                      executable: 'TheBrain Installer.app/Contents/MacOS/JavaApplicationStub',
                      args:       ['-q'],
                    }

  uninstall delete: '/Applications/TheBrain.app'
end
