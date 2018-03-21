cask 'xampp' do
  version '7.2.2-0'
  sha256 'f0282eccf33e5cd77e4d72209c5650e48ec4ac1f474c78b8b5effece3982e173'

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
