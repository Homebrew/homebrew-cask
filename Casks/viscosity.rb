cask 'viscosity' do
  version '1.5.11'
  sha256 'f235d2db655151d15976beee293bc2f6bc85025fdfe83c1b015e0d413547ba95'

  url 'https://www.sparklabs.com/downloads/Viscosity.dmg'
  appcast 'http://swupdate.sparklabs.com/appcast/mac/release/viscosity/',
          checkpoint: 'a7729c3828c350e03c1e27f3bf2c8f5c55bd7d2533d91b1359a28db34635036f'
  name 'Viscosity'
  homepage 'https://www.sparklabs.com/viscosity/'
  license :commercial

  app 'Viscosity.app'

  zap delete: [
                '~/Library/Application Support/Viscosity',
                '~/Library/Preferences/com.viscosityvpn.Viscosity.plist',
              ]
end
