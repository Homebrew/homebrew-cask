cask 'wavebox' do
  version '10.0.104.1'
  sha256 '70e55f1c98efe6679654620a7f0d0a72e2ee1d96e00a4bb62b5203a375333fe9'

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
