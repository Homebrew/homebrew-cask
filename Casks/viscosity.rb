cask 'viscosity' do
  version '1.6.2'
  sha256 'df6fc49b819dddacae2cbd64561d7e22ac1faa1350bdc695808fe43628bcb349'

  url 'https://www.sparklabs.com/downloads/Viscosity.dmg'
  appcast 'http://swupdate.sparklabs.com/appcast/mac/release/viscosity/',
          checkpoint: '0115842469aacd33d1a9f9ba534b87dd96cb51860658bdfd33da0dc02f8fadd3'
  name 'Viscosity'
  homepage 'https://www.sparklabs.com/viscosity/'
  license :commercial

  app 'Viscosity.app'

  zap delete: [
                '~/Library/Application Support/Viscosity',
                '~/Library/Preferences/com.viscosityvpn.Viscosity.plist',
              ]
end
