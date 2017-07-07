cask 'wavebox' do
  version '3.1.13'
  sha256 'd5b43826d7e376be517e9e6a4070bd6b914352c419b3f64f23200d7eb804fb53'

  # github.com/wavebox/waveboxapp was verified as official when first introduced to the cask
  url "https://github.com/wavebox/waveboxapp/releases/download/v#{version}/Wavebox_#{version.dots_to_underscores}_osx.dmg"
  appcast 'https://github.com/wavebox/waveboxapp/releases.atom',
          checkpoint: '7e8fa82f534223fd606edd4c1ef7d907cac1e130d8fbff8256205dc28639ff37'
  name 'Wavebox'
  homepage 'https://wavebox.io/'

  app 'Wavebox.app'

  uninstall quit:       'io.wavebox.wavebox',
            login_item: 'Wavebox'

  zap delete: [
                '~/Library/Application Support/wavebox',
                '~/Library/Caches/io.wavebox.wavebox',
                '~/Library/Caches/io.wavebox.wavebox.ShipIt',
                '~/Library/Preferences/io.wavebox.wavebox.helper.plist',
                '~/Library/Preferences/io.wavebox.wavebox.plist',
                '~/Library/Saved Application State/io.wavebox.wavebox.savedState',
              ]
end
