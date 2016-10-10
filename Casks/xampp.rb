cask 'xampp' do
  version '5.6.21-0'
  sha256 '5c73ec8cd57b93ab8763b49fdfcfb061f3fc1cc3586006758a6353dd777c8ada'

  # downloadsapachefriends.global.ssl.fastly.net/xampp-files was verified as official when first introduced to the cask
  url "https://downloadsapachefriends.global.ssl.fastly.net/xampp-files/#{version.major_minor_patch}/xampp-osx-#{version}-installer.dmg"
  name 'XAMPP'
  homepage 'https://www.apachefriends.org/'

  installer script: 'XAMPP.app/Contents/MacOS/osx-intel',
            args:   ['--mode', 'unattended'],
            sudo:   true

  uninstall quit:   'com.bitnami.manager',
            delete: '/Applications/XAMPP/'
end
