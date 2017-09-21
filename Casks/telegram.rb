cask 'telegram' do
  version '3.2.4-105056'
  sha256 '26345069d79e790a28ba1a93f39405c3bba60f1fbd41cdc13d2c5cd94baea8ed'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: 'b12dfbb44b0cf1849eb5d00fd1e22fa49079896357cc2723660bddb2a6e9df99'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  depends_on macos: '>= 10.11'

  app 'Telegram.app'

  zap delete: [
                '~/Library/Application Scripts/ru.keepcoder.Telegram',
                '~/Library/Application Scripts/ru.keepcoder.Telegram.TelegramShare',
                '~/Library/Containers/ru.keepcoder.Telegram',
                '~/Library/Containers/ru.keepcoder.Telegram.TelegramShare',
                '~/Library/Group Containers/*.ru.keepcoder.Telegram',
                '~/Library/Saved Application State/ru.keepcoder.Telegram.savedState',
              ],
      trash:  '~/Library/Preferences/ru.keepcoder.Telegram.plist'
end
