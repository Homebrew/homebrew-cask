cask 'wavebox' do
  version '3.1.4'
  sha256 '099a263622f30f840adbec3e586300a37ee0e5428595c3251dc4127850024fd2'

  # github.com/wavebox/waveboxapp was verified as official when first introduced to the cask
  url "https://github.com/wavebox/waveboxapp/releases/download/v#{version}/Wavebox_#{version.dots_to_underscores}_osx.dmg"
  appcast 'https://github.com/wavebox/waveboxapp/releases.atom',
          checkpoint: 'c674c9861705c949b9b253b91edcc47ad14b7e2a7dd260b7ade20bf427366468'
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
