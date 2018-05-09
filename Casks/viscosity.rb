cask 'viscosity' do
  version '1.7.9'
  sha256 'fbb7111c59c0b2e5164a520ebf5a49fe5baddaad4314b1d1d1c066f923b501c1'

  url "https://swupdate.sparklabs.com/download/mac/release/viscosity/Viscosity%20#{version}.dmg"
  appcast 'https://swupdate.sparklabs.com/appcast/mac/release/viscosity/',
          checkpoint: '42e436e3d57dbd738ab898bc9fe10cf499a80f8638885bb8f5f2176bca0428a6'
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
