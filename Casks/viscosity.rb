cask 'viscosity' do
  version '1.8.5'
  sha256 '566f449b85d11439da4bcc86521475fa07701e6f1fd4c707bafc887b41dcfca1'

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
