cask 'wavebox' do
  version '3.1.12'
  sha256 'c9f67f9f6a1a43134af34ead6ace7c2c32df4b10748da524028abb3dfd238eb4'

  # github.com/wavebox/waveboxapp was verified as official when first introduced to the cask
  url "https://github.com/wavebox/waveboxapp/releases/download/v#{version}/Wavebox_#{version.dots_to_underscores}_osx.dmg"
  appcast 'https://github.com/wavebox/waveboxapp/releases.atom',
          checkpoint: '8e291fe16fcde382f3f5370fa1f5720d20322fe147bb747c88989d6ac2bea632'
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
