cask 'viscosity' do
  version '1.7'
  sha256 '66056714d6f5ee4e0ef35762fb9a7c8d9c29daad5c099958856694b0d6506c85'

  url "https://swupdate.sparklabs.com/download/mac/release/viscosity/Viscosity%20#{version}.dmg"
  appcast 'https://swupdate.sparklabs.com/appcast/mac/release/viscosity/',
          checkpoint: '0bd1296b94a6e516640d801c91b06802fe4f51c49307a22663cb7dbfd0b07106'
  name 'Viscosity'
  homepage 'https://www.sparklabs.com/viscosity/'

  auto_updates true

  app 'Viscosity.app'

  zap delete: [
                '/Library/Application Support/Viscosity',
                '/Library/LaunchDaemons/com.sparklabs.ViscosityHelper.plist',
                '/Library/PrivilegedHelperTools/com.sparklabs.ViscosityHelper',
                '~/Library/Application Support/Viscosity',
                '~/Library/Caches/com.viscosityvpn.Viscosity',
                '~/Library/Cookies/com.viscosityvpn.Viscosity.binarycookies',
                '~/Library/Preferences/com.viscosityvpn.Viscosity.plist',
              ]
end
