cask 'telegram-desktop' do
  version '1.1.17'
  sha256 '3712060dd6ef74992f2e70ed3c8b051bb9e10a653a1992dd3c9dcfaecddd1777'

  # github.com/telegramdesktop/tdesktop/releases/download was verified as official when first introduced to the cask
  url "https://github.com/telegramdesktop/tdesktop/releases/download/v#{version}/tsetup.#{version}.dmg"
  appcast 'https://github.com/telegramdesktop/tdesktop/releases.atom',
          checkpoint: 'd6455041ace3f3eb0ddf8cea1b71ec9f86b6fc2e2da94d983e8339cc605dcb74'
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
