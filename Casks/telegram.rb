cask 'telegram' do
  version '3.5.2-107970'
  sha256 'aa13f35295191ed47ac5af890b1d642864c20c9c5130c6c6c73fd7ab13fe8c8f'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: 'ae49abbf4838e15ec6fd420bc4c2af1ba24d9a370780230dd1b6c6c62b1d9fad'
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
