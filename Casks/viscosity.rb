cask 'viscosity' do
  version '1.5.11'
  sha256 'f235d2db655151d15976beee293bc2f6bc85025fdfe83c1b015e0d413547ba95'

  url 'https://www.sparklabs.com/downloads/Viscosity.dmg'
  name 'Viscosity'
  homepage 'https://www.sparklabs.com/viscosity/'
  license :commercial

  app 'Viscosity.app'

  zap :delete => [
                   '~/Library/Application Support/Viscosity',
                   '~/Library/Preferences/com.viscosityvpn.Viscosity.plist',
                 ]
end
