cask 'wavebox' do
  version '3.2.0'
  sha256 'bc1fc2f00080d9e0730542db8bb080be3c1eac1044785f511a0fcf14922eafb1'

  # github.com/wavebox/waveboxapp was verified as official when first introduced to the cask
  url "https://github.com/wavebox/waveboxapp/releases/download/v#{version}/Wavebox_#{version.dots_to_underscores}_osx.dmg"
  appcast 'https://github.com/wavebox/waveboxapp/releases.atom',
          checkpoint: '734a08aec59a50f304b71e24b5d3dc8ff174cd7c35d31b2226e085fe13bbd683'
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
