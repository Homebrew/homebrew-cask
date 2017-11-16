cask 'telegram' do
  version '3.5.3-108404'
  sha256 '6adefa53240a03cfef43e9b31d3c73139c3ff876d6bed05ba89b6adf4bf161fd'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '76f5c974e1043f3d36acb8f225a4d6a8262b83c6c43e6011de36bb8f70e351ac'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  depends_on macos: '>= :el_capitan'

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
