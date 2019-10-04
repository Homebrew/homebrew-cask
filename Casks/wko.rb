cask 'wko' do
  version '544'
  sha256 'd39f7c4e85e371ab1858b27f5c658f73194d4e85dd7db520eab1aba2b5c7a4a0'

  # wko4.com was verified as official when first introduced to the cask
  url "https://updates.wko4.com/TeQ2y43sOpz2/WKO5_OSX_#{version}.dmg"
  appcast 'https://updates.wko4.com/TeQ2y43sOpz2/wko5_osx_appcast.xml'
  name 'WKO'
  homepage 'https://www.trainingpeaks.com/wko5/'

  app 'WKO5.app'
end
