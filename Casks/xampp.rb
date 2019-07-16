cask 'xampp' do
  version '7.3.4-0'
  sha256 'd75688bbfaa943e293218fe4546d9ff3d104f89b99815b2fe3ec179545b5188c'

  # downloadsapachefriends.global.ssl.fastly.net/xampp-files was verified as official when first introduced to the cask
  url "https://downloadsapachefriends.global.ssl.fastly.net/xampp-files/#{version.major_minor_patch}/xampp-osx-#{version}-installer.dmg"
  name 'XAMPP'
  homepage 'https://www.apachefriends.org/index.html'

  installer script: {
                      executable: 'XAMPP.app/Contents/MacOS/osx-intel',
                      args:       ['--mode', 'unattended'],
                      sudo:       true,
                    }

  uninstall quit:   'com.bitnami.manager',
            script: {
                      executable: '/Applications/XAMPP/uninstall.app/Contents/MacOS/osx-intel',
                      args:       ['--mode', 'unattended'],
                      sudo:       true,
                    },
            delete: '/Applications/XAMPP/'
end
