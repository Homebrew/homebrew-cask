cask 'xampp' do
  version '7.2.5-0'
  sha256 '17ec884968493468b5fe57131891d856b893109b2598ba4ed8a5b7981afcd419'

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
            delete: '/Applications/XAMPP/'
end
