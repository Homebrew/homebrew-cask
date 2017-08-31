cask 'telegram-desktop' do
  version '1.1.19'
  sha256 '82e793aafe22ef3f10f5c629204ed4b11cc6fdf3168d89d297ab4de272e02066'

  # github.com/telegramdesktop/tdesktop/releases/download was verified as official when first introduced to the cask
  url "https://github.com/telegramdesktop/tdesktop/releases/download/v#{version}/tsetup.#{version}.dmg"
  appcast 'https://github.com/telegramdesktop/tdesktop/releases.atom',
          checkpoint: '977aeb7b5ff5df85db8ea37152b5864521af36d96af3209c6aff1fc473553295'
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
