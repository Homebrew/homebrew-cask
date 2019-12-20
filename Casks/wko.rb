cask 'wko' do
  version '553'
  sha256 '8e462b88c8ed3bb9fee567b9ec42cc8171690265d6e17b51f67df97f34717842'

  # wko4.com was verified as official when first introduced to the cask
  url "https://updates.wko4.com/TeQ2y43sOpz2/WKO5_OSX_#{version}.dmg"
  appcast 'https://updates.wko4.com/TeQ2y43sOpz2/wko5_osx_appcast.xml'
  name 'WKO'
  homepage 'https://www.trainingpeaks.com/wko5/'

  app 'WKO5.app'
end
