cask 'viscosity' do
  version '1.6.1'
  sha256 'a6ff43d1c9d240bf072ecc47e2f5624bfa1c6e048a7f29d23e13cb773f3a9137'

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
