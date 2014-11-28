cask :v1 => 'viscosity' do
  version :latest
  sha256 :no_check

  url 'https://www.sparklabs.com/downloads/Viscosity.dmg'
  appcast 'http://www.viscosityvpn.com/update/viscosity.xml'
  homepage 'http://www.sparklabs.com/viscosity/'
  license :commercial

  app 'Viscosity.app'

  zap :delete => [
                  '~/Library/Application Support/Viscosity',
                  '~/Library/Preferences/com.viscosityvpn.Viscosity.plist',
                 ]
end
