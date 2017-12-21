cask 'viscosity' do
  version '1.7.6'
  sha256 'f34b3d2bcf8e57e33db2e678a17bbef029b0175faaae3373fa29a929fbc4df84'

  url "https://swupdate.sparklabs.com/download/mac/release/viscosity/Viscosity%20#{version}.dmg"
  appcast 'https://swupdate.sparklabs.com/appcast/mac/release/viscosity/',
          checkpoint: '496aa5e3dcb5c19ebda7aed2a8a9c5053e6a24b77941c3db5e7653161915dfa7'
  name 'Viscosity'
  homepage 'https://www.sparklabs.com/viscosity/'

  auto_updates true

  app 'Viscosity.app'

  uninstall delete:     [
                          '/Library/Application Support/Viscosity',
                          '/Library/PrivilegedHelperTools/com.sparklabs.ViscosityHelper',
                        ],
            launchctl:  'com.sparklabs.ViscosityHelper',
            login_item: 'Viscosity',
            signal:     ['TERM', 'com.viscosityvpn.Viscosity']

  zap trash: [
               '~/Library/Application Support/Viscosity',
               '~/Library/Caches/com.viscosityvpn.Viscosity',
               '~/Library/Cookies/com.viscosityvpn.Viscosity.binarycookies',
               '~/Library/Preferences/com.viscosityvpn.Viscosity.plist',
             ]
end
