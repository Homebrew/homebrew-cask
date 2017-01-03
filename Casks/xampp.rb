cask 'xampp' do
  version '5.6.28-1'
  sha256 '23ea25814a5f2bb38cf5d43d499bafbcfc303ec99f967b69d8f5b43e8f65fa0b'

  # downloadsapachefriends.global.ssl.fastly.net/xampp-files was verified as official when first introduced to the cask
  url "https://downloadsapachefriends.global.ssl.fastly.net/xampp-files/#{version.major_minor_patch}/xampp-osx-#{version}-installer.dmg"
  name 'XAMPP'
  homepage 'https://www.apachefriends.org/index.html'

  installer script: 'XAMPP.app/Contents/MacOS/osx-intel',
            args:   ['--mode', 'unattended'],
            sudo:   true

  uninstall quit:   'com.bitnami.manager',
            delete: '/Applications/XAMPP/'
end
