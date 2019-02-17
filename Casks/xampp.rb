cask 'xampp' do
  version '7.3.1-0'
  sha256 'b6564cd35a9a9cff1a4a232b911da8c3b2a524486c9697b54603445a868e80bb'

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
