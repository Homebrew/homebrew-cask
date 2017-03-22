cask 'viscosity' do
  version '1.6.8'
  sha256 '9d0b957de7e4a6683f28d67cc05a72e51b4839c3f6ae543855a81d6cc502618f'

  url "https://swupdate.sparklabs.com/download/mac/release/viscosity/Viscosity%20#{version}.dmg"
  appcast 'https://swupdate.sparklabs.com/appcast/mac/release/viscosity/',
          checkpoint: '51a48aa7645241737c802a53d35825fb9a85be1d85982d2b4c34e8e0973bafd7'
  name 'Viscosity'
  homepage 'https://www.sparklabs.com/viscosity/'

  auto_updates true

  app 'Viscosity.app'

  zap delete: [
                '~/Library/Application Support/Viscosity',
                '~/Library/Preferences/com.viscosityvpn.Viscosity.plist',
              ]
end
