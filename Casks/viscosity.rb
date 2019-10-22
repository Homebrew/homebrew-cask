cask 'viscosity' do
  version '1.8.1'
  sha256 '7733254c8b6a3614818528d6f0b6411856a629966b1b9681d554dda663c0d48f'

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
