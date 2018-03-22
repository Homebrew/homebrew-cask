cask 'wavebox' do
  version '3.12.0'
  sha256 '3ec3a8e3df16dc9746c1b390a30d00d26b974657ff4e5b1c8c53db77b5856402'

  # github.com/wavebox/waveboxapp was verified as official when first introduced to the cask
  url "https://github.com/wavebox/waveboxapp/releases/download/v#{version}/Wavebox_#{version.dots_to_underscores}_osx.dmg"
  appcast 'https://github.com/wavebox/waveboxapp/releases.atom',
          checkpoint: 'f9dbc0955b5b85e144e26b03a9c95c4841fc9a9187fa1acb26036549c62d089f'
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
