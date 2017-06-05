cask 'telegram-desktop' do
  version '1.1.7'
  sha256 '52c80d990bfce7a58caebca57c7d5f23e8de8df98aad7ec3406ae56bd0165b85'

  # github.com/telegramdesktop/tdesktop/releases/download was verified as official when first introduced to the cask
  url "https://github.com/telegramdesktop/tdesktop/releases/download/v#{version}/tsetup.#{version}.dmg"
  appcast 'https://github.com/telegramdesktop/tdesktop/releases.atom',
          checkpoint: '5f69b7f4e3ddea61d988e6c316b97560a830f0f08e81c99df92ff89c88b438dc'
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
