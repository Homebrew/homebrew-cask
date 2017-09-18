cask 'viscosity' do
  version '1.7.4'
  sha256 'c92579006cef1cf2ec34722d8629b2847aa64177ee79e06ed2ea7cacd8ad01d2'

  url "https://swupdate.sparklabs.com/download/mac/release/viscosity/Viscosity%20#{version}.dmg"
  appcast 'https://swupdate.sparklabs.com/appcast/mac/release/viscosity/',
          checkpoint: '0244a672b9a81852460cd9192fa6afda6f821f1a59bc68f7e9e46513e2c557f7'
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

  zap delete: [
                '~/Library/Caches/com.viscosityvpn.Viscosity',
                '~/Library/Cookies/com.viscosityvpn.Viscosity.binarycookies',
              ],
      trash:  [
                '~/Library/Application Support/Viscosity',
                '~/Library/Preferences/com.viscosityvpn.Viscosity.plist',
              ]
end
