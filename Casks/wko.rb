cask 'wko' do
  version '555'
  sha256 '117767e09509409578726b34473dd05184fcff04aab30893b5b60426b5d4c529'

  # wko4.com was verified as official when first introduced to the cask
  url "https://updates.wko4.com/TeQ2y43sOpz2/WKO5_OSX_#{version}.dmg"
  appcast 'https://updates.wko4.com/TeQ2y43sOpz2/wko5_osx_appcast.xml'
  name 'WKO'
  homepage 'https://www.trainingpeaks.com/wko5/'

  app 'WKO5.app'
end
