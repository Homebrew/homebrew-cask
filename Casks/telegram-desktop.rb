cask 'telegram-desktop' do
  version '1.3.0'
  sha256 'e3ba48d785f7d1928d3a9751cab3e679081c1e53207184cf08eab6cd8d69b608'

  # github.com/telegramdesktop/tdesktop/releases/download was verified as official when first introduced to the cask
  url "https://github.com/telegramdesktop/tdesktop/releases/download/v#{version}/tsetup.#{version}.dmg"
  appcast 'https://github.com/telegramdesktop/tdesktop/releases.atom',
          checkpoint: '941ffaed7bbe8d379d50cd64612fb58bed1bb02f458012ab20d8e1808e5c2eea'
  name 'Telegram Desktop'
  homepage 'https://desktop.telegram.org/'

  auto_updates true
  conflicts_with cask: 'telegram-desktop-dev'

  # Renamed to avoid conflict with telegram
  app 'Telegram.app', target: 'Telegram Desktop.app'

  zap trash: [
               '~/Library/Application Support/Telegram Desktop',
               '~/Library/Preferences/com.tdesktop.Telegram.plist',
               '~/Library/Saved Application State/com.tdesktop.Telegram.savedState',
             ]
end
