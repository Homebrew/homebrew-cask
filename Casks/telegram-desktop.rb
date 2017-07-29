cask 'telegram-desktop' do
  version '1.1.18'
  sha256 'f6814e7c8cb4ce8bcbd11a6ab6349844873ac5e9cd07012b3713efe2e59ae38b'

  # github.com/telegramdesktop/tdesktop/releases/download was verified as official when first introduced to the cask
  url "https://github.com/telegramdesktop/tdesktop/releases/download/v#{version}/tsetup.#{version}.dmg"
  appcast 'https://github.com/telegramdesktop/tdesktop/releases.atom',
          checkpoint: '904294bc69e7c24cf4806f246e30c5647eee1ff55b2875f8329f22e9c0f30d97'
  name 'Telegram Desktop'
  homepage 'https://desktop.telegram.org/'

  auto_updates true
  conflicts_with cask: 'telegram-desktop-dev'

  # Renamed to avoid conflict with telegram
  app 'Telegram.app', target: 'Telegram Desktop.app'

  zap delete: [
                '~/Library/Application Support/Telegram Desktop',
                '~/Library/Preferences/com.tdesktop.Telegram.plist',
                '~/Library/Saved Application State/com.tdesktop.Telegram.savedState',
              ]
end
