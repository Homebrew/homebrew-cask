cask 'wavebox' do
  version '4.10.4'
  sha256 '04ed611b93889c4bdfd45e1afeefcbb22077868b1d6f352685e14240877bccc3'

  # github.com/wavebox/waveboxapp was verified as official when first introduced to the cask
  url "https://github.com/wavebox/waveboxapp/releases/download/v#{version}/Wavebox_#{version.dots_to_underscores}_osx.dmg"
  appcast 'https://github.com/wavebox/waveboxapp/releases.atom'
  name 'Wavebox'
  homepage 'https://wavebox.io/'

  auto_updates true

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
