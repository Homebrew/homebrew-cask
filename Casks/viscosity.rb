cask 'viscosity' do
  version '1.6.2'
  sha256 'df6fc49b819dddacae2cbd64561d7e22ac1faa1350bdc695808fe43628bcb349'

  url "https://swupdate.sparklabs.com/download/mac/release/viscosity/Viscosity%20#{version}.dmg"
  appcast 'http://swupdate.sparklabs.com/appcast/mac/release/viscosity/',
          checkpoint: 'e522541f1009874bf815d64539fefbb2b78975826e5b00b391b63b6f65dd0efe'
  name 'Viscosity'
  homepage 'https://www.sparklabs.com/viscosity/'
  license :commercial

  app 'Viscosity.app'

  zap delete: [
                '~/Library/Application Support/Viscosity',
                '~/Library/Preferences/com.viscosityvpn.Viscosity.plist',
              ]
end
