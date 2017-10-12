cask 'telegram' do
  version '3.5-107595'
  sha256 '942cceb9a82ea5a745d0d99855956c52f725d81aa9d62c673b6dc7c567e69874'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '4dfe40fef781f0d1e6915556b4172f5e95000ef9fd7be960433cb6999686c6f7'
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
