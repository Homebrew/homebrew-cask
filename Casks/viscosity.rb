cask 'viscosity' do
  version '1.6'
  sha256 '0eb457a5c9ee1ec4b4311402afaef4c6aa1cc19b9beaedacc09afab0edb225bf'

  url 'https://www.sparklabs.com/downloads/Viscosity.dmg'
  appcast 'http://swupdate.sparklabs.com/appcast/mac/release/viscosity/',
          checkpoint: '36941cdde0505e4bb6619175c9c7109e651b1b91ecdf004758f840738d234951'
  name 'Viscosity'
  homepage 'https://www.sparklabs.com/viscosity/'
  license :commercial

  app 'Viscosity.app'

  zap delete: [
                '~/Library/Application Support/Viscosity',
                '~/Library/Preferences/com.viscosityvpn.Viscosity.plist',
              ]
end
