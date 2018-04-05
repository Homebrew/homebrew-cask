cask 'wavebox' do
  version '3.13.0'
  sha256 '7fa79e73796533668799e5f04aae41741fa9bdbad8ea1819007b7b4d9a7608c0'

  # github.com/wavebox/waveboxapp was verified as official when first introduced to the cask
  url "https://github.com/wavebox/waveboxapp/releases/download/v#{version}/Wavebox_#{version.dots_to_underscores}_osx.dmg"
  appcast 'https://github.com/wavebox/waveboxapp/releases.atom',
          checkpoint: '0b86af74e2c3a58a97bba4f7e075af3cdcca0f785cf238dcdadd24d4611dc411'
  name 'Wavebox'
  homepage 'https://wavebox.io/'

  app 'Wavebox.app'

  uninstall quit:       'io.wavebox.wavebox',
            login_item: 'Wavebox'

  zap trash: [
               '~/Library/Application Support/wavebox',
               '~/Library/Caches/io.wavebox.wavebox',
               '~/Library/Caches/io.wavebox.wavebox.ShipIt',
               '~/Library/Preferences/io.wavebox.wavebox.helper.plist',
               '~/Library/Preferences/io.wavebox.wavebox.plist',
               '~/Library/Saved Application State/io.wavebox.wavebox.savedState',
             ]
end
