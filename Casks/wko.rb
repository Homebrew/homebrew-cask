cask 'wko' do
  version '381'
  sha256 '74107f34bda30acd2cd0d0a148558e42ae5539b83b6bd6fd0b25bd292d578657'

  # wko4.com was verified as official when first introduced to the cask
  url "https://updates.wko4.com/wko4release/WKO4_OSX_#{version}.dmg"
  appcast 'https://updates.wko4.com/wko4release/wko4_osx_appcast.xml'
  name 'WKO'
  homepage 'https://www.trainingpeaks.com/wko4/'

  app 'WKO4.app'
end
