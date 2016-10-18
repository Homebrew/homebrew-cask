cask 'viscosity' do
  version '1.6.6'
  sha256 '59b62c626498fd5defa42f1447f14aab272388ac9f8bf50cfe4bd49ce9f6b80a'

  url "https://swupdate.sparklabs.com/download/mac/release/viscosity/Viscosity%20#{version}.dmg"
  appcast 'https://swupdate.sparklabs.com/appcast/mac/release/viscosity/',
          checkpoint: '919b641a3b0c42e190c4f383bd1235deecc869fb30d1be88e86ee1d0cc179752'
  name 'Viscosity'
  homepage 'https://www.sparklabs.com/viscosity/'

  app 'Viscosity.app'

  zap delete: [
                '~/Library/Application Support/Viscosity',
                '~/Library/Preferences/com.viscosityvpn.Viscosity.plist',
              ]
end
