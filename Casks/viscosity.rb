cask 'viscosity' do
  version '1.8'
  sha256 '581c52d50ac7fc2c254199e121106f254d697be65d735ac28d830af67273cb7e'

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
