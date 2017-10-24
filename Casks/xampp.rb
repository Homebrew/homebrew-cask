cask 'xampp' do
  version '7.1.10-0'
  sha256 '40c5ad6933267d8018f93fc9036e74754717b9359b2fec00ae75a303712616ad'

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
