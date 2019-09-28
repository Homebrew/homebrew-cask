cask 'wko' do
  version '543'
  sha256 '2eecd140deb42aec69003337523430c3ccf57ecf4354334ffa600652c1fe6cce'

  # wko4.com was verified as official when first introduced to the cask
  url "https://updates.wko4.com/TeQ2y43sOpz2/WKO5_OSX_#{version}.dmg"
  appcast 'https://updates.wko4.com/TeQ2y43sOpz2/wko5_osx_appcast.xml'
  name 'WKO'
  homepage 'https://www.trainingpeaks.com/wko5/'

  app 'WKO5.app'
end
