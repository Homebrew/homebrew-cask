cask 'wavebox' do
  version '10.0.121.1'
  sha256 'd1f0fbb1c50a6434b60a94e9246ca25ae1bae59d412e54458afe62894750acc5'

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
