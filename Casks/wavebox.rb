cask 'wavebox' do
  version '4.11.5'
  sha256 'f2048252354c27a534ed886c36abfcc3f40f06425b4c15caefcbdba0cc26eb28'

  # github.com/wavebox/waveboxapp was verified as official when first introduced to the cask
  url "https://github.com/wavebox/waveboxapp/releases/download/v#{version}/Wavebox_#{version.dots_to_underscores}_osx.dmg"
  appcast 'https://github.com/wavebox/waveboxapp/releases.atom'
  name 'Wavebox'
  homepage 'https://wavebox.io/'

  auto_updates true

  app 'Wavebox.app'

  uninstall quit: 'io.wavebox.wavebox'

  zap trash: [
               '~/Library/Application Support/wavebox',
               '~/Library/Caches/io.wavebox.wavebox',
               '~/Library/Caches/io.wavebox.wavebox.ShipIt',
               '~/Library/Preferences/io.wavebox.wavebox.helper.plist',
               '~/Library/Preferences/io.wavebox.wavebox.plist',
               '~/Library/Saved Application State/io.wavebox.wavebox.savedState',
             ]
end
