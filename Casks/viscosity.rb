cask 'viscosity' do
  version '1.7.2'
  sha256 '153b4813af9ef36e600eb8977332e93e3d005548753334377bd335bbecb5bbb1'

  url "https://swupdate.sparklabs.com/download/mac/release/viscosity/Viscosity%20#{version}.dmg"
  appcast 'https://swupdate.sparklabs.com/appcast/mac/release/viscosity/',
          checkpoint: 'cf130dbbf468fb5762016540c43c013ad5780861b8ff291040f1f4d8e61f48f0'
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
