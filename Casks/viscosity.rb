cask 'viscosity' do
  version '1.8.2'
  sha256 '9eb08d31c514a86840b9b4158261415fc31f9df52c3b4946d7424d648e29c253'

  url "https://swupdate.sparklabs.com/download/mac/release/viscosity/Viscosity%20#{version}.dmg"
  appcast 'https://swupdate.sparklabs.com/appcast/mac/release/viscosity/'
  name 'Viscosity'
  homepage 'https://www.sparklabs.com/viscosity/'

  auto_updates true

  app 'Viscosity.app'

  uninstall delete:    [
                         '/Library/Application Support/Viscosity',
                         '/Library/PrivilegedHelperTools/com.sparklabs.ViscosityHelper',
                       ],
            launchctl: 'com.sparklabs.ViscosityHelper',
            signal:    ['TERM', 'com.viscosityvpn.Viscosity']

  zap trash: [
               '~/Library/Application Support/Viscosity',
               '~/Library/Caches/com.viscosityvpn.Viscosity',
               '~/Library/Cookies/com.viscosityvpn.Viscosity.binarycookies',
               '~/Library/Preferences/com.viscosityvpn.Viscosity.plist',
             ]
end
