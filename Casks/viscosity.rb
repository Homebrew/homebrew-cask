cask 'viscosity' do
  version :latest
  sha256 :no_check

  url 'https://www.sparklabs.com/downloads/Viscosity.dmg'
  appcast 'http://www.viscosityvpn.com/update/viscosity.xml',
          :sha256 => '1dba070850ab55b9c94b8287e3f67a167c502ccf4da6a84088cb38fb0278e571'
  name 'Viscosity'
  homepage 'https://www.sparklabs.com/viscosity/'
  license :commercial

  app 'Viscosity.app'

  zap :delete => [
                   '~/Library/Application Support/Viscosity',
                   '~/Library/Preferences/com.viscosityvpn.Viscosity.plist',
                 ]
end
