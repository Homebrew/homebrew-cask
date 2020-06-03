cask 'wavebox' do
  version '10.0.179.1'
  sha256 'a2c1a2096d020cca0a2b8fa2e71a91f79f6f5d59010c8652e8f79b59e9bd1a86'

  # download.wavebox.app/ was verified as official when first introduced to the cask
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
