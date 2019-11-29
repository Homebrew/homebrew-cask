cask 'wko' do
  version '550'
  sha256 'aa5259e316df41ac82d2b295c3a4b4ca5a969f83d7182c9ffce1ba7e85ca92a2'

  # wko4.com was verified as official when first introduced to the cask
  url "https://updates.wko4.com/TeQ2y43sOpz2/WKO5_OSX_#{version}.dmg"
  appcast 'https://updates.wko4.com/TeQ2y43sOpz2/wko5_osx_appcast.xml'
  name 'WKO'
  homepage 'https://www.trainingpeaks.com/wko5/'

  app 'WKO5.app'
end
