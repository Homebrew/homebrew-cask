cask 'viscosity' do
  version '1.6.4'
  sha256 'f9173c3c839ce1d09e8630a633176f1e58376a1a64e89951b0c1f2c8f4454f46'

  url "https://swupdate.sparklabs.com/download/mac/release/viscosity/Viscosity%20#{version}.dmg"
  appcast 'http://swupdate.sparklabs.com/appcast/mac/release/viscosity/',
          checkpoint: '1fa23e7cf88bc04a40a2cdfa47f4c950dc78f75a2adb30ce3aa1a1fe8c9bc625'
  name 'Viscosity'
  homepage 'https://www.sparklabs.com/viscosity/'
  license :commercial

  app 'Viscosity.app'

  zap delete: [
                '~/Library/Application Support/Viscosity',
                '~/Library/Preferences/com.viscosityvpn.Viscosity.plist',
              ]
end
