cask 'viscosity' do
  version '1.7.1'
  sha256 'a7bfa030055fb6fbdbab2413ff1dfa3ac1e9a8479928cb09b514adcd1e20f3ae'

  url "https://swupdate.sparklabs.com/download/mac/release/viscosity/Viscosity%20#{version}.dmg"
  appcast 'https://swupdate.sparklabs.com/appcast/mac/release/viscosity/',
          checkpoint: 'a5e1839cdb07e064efd33393097c30b9c87b42a478e82c03c4414a195808acab'
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
