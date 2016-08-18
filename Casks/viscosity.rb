cask 'viscosity' do
  version '1.6.5'
  sha256 'c17fb697dead91b531b4834ee9e886f7c1f140171e67fe2c58347a83e24a9a20'

  url "https://swupdate.sparklabs.com/download/mac/release/viscosity/Viscosity%20#{version}.dmg"
  appcast 'https://swupdate.sparklabs.com/appcast/mac/release/viscosity/',
          checkpoint: '0cf888353a2abb2da3e560dfe9a9d516521e58f53f3fd3a0fb7a081776b43b13'
  name 'Viscosity'
  homepage 'https://www.sparklabs.com/viscosity/'
  license :commercial

  app 'Viscosity.app'

  zap delete: [
                '~/Library/Application Support/Viscosity',
                '~/Library/Preferences/com.viscosityvpn.Viscosity.plist',
              ]
end
