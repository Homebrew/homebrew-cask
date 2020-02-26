cask 'wavebox' do
  version '10.0.90.1'
  sha256 'af8345d54edd753297388d24282f4bf383e04d9c97ff1bc951f8d76ae4b4b419'

  # download.wavebox.app was verified as official when first introduced to the cask
  url "https://download.wavebox.app/core/mac/Install%20Wavebox%20#{version}.dmg"
  appcast 'https://download.wavebox.app/core/mac/appcast.xml'
  name 'Wavebox'
  homepage 'https://wavebox.io/'

  auto_updates true

  app 'Wavebox.app'

  uninstall quit: 'io.wavebox.wavebox'

  zap trash: [
               '~/Library/Application Support/WaveboxApp',
               '~/Library/Caches/com.bookry.wavebox',
               '~/Library/Caches/WaveboxApp',
               '~/Library/Preferences/com.bookry.wavebox.plist',
               '~/Library/Saved Application State/com.bookry.wavebox.savedState',
             ]
end
