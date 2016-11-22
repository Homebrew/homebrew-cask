cask 'viscosity' do
  version '1.6.7'
  sha256 'd69c477a60edd02e1482390ecd528fcd8397c68033aec581a969adc490076d9a'

  url "https://swupdate.sparklabs.com/download/mac/release/viscosity/Viscosity%20#{version}.dmg"
  appcast 'https://swupdate.sparklabs.com/appcast/mac/release/viscosity/',
          checkpoint: 'e09e54cddbc1b4a90722074cb2ef210c6c599206504eccefdd3c879e9d74ad4b'
  name 'Viscosity'
  homepage 'https://www.sparklabs.com/viscosity/'

  auto_updates true

  app 'Viscosity.app'

  zap delete: [
                '~/Library/Application Support/Viscosity',
                '~/Library/Preferences/com.viscosityvpn.Viscosity.plist',
              ]
end
