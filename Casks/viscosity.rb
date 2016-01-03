cask 'viscosity' do
  version :latest
  sha256 :no_check

  url 'https://www.sparklabs.com/downloads/Viscosity.dmg'
  appcast 'http://www.viscosityvpn.com/update/viscosity.xml',
          :sha256 => 'e7306d24fbfaf3be9ca4195bc6ae2c23c974647a3bf0f9d8e733f7acaba4b6b5'
  name 'Viscosity'
  homepage 'https://www.sparklabs.com/viscosity/'
  license :commercial

  app 'Viscosity.app'

  zap :delete => [
                   '~/Library/Application Support/Viscosity',
                   '~/Library/Preferences/com.viscosityvpn.Viscosity.plist',
                 ]
end
