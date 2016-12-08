cask 'xampp' do
  version '5.6.28-0'
  sha256 '7243fddb861ac3780db665c7bf60008582379adf28ec6caaa146ae0206f6812c'

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
