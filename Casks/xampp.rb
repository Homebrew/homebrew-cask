cask 'xampp' do
  version '7.3.11,0'
  sha256 'cf6a2ddedd64955080e09a6279cbda78569a21ba8d017bd035f73a47b8f9da5b'

  # downloadsapachefriends.global.ssl.fastly.net/xampp-files was verified as official when first introduced to the cask
  url "https://downloadsapachefriends.global.ssl.fastly.net/xampp-files/#{version.before_comma}/xampp-osx-#{version.before_comma}-#{version.after_comma}-installer.dmg"
  name 'XAMPP'
  homepage 'https://www.apachefriends.org/index.html'

  installer script: {
                      executable: 'XAMPP.app/Contents/MacOS/osx-x86_64',
                      args:       ['--mode', 'unattended'],
                      sudo:       true,
                    }

  uninstall quit:   'com.bitnami.manager',
            script: {
                      executable: '/Applications/XAMPP/uninstall.app/Contents/MacOS/osx-x86_64',
                      args:       ['--mode', 'unattended'],
                      sudo:       true,
                    },
            delete: '/Applications/XAMPP/'
end
