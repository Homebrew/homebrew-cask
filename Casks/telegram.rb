cask 'telegram' do
  version '4.7.1-146931'
  sha256 '3f7c1b5b75a9b563f3a3fab218cc34057253d21d2265569c0f03a10a086830af'

  url "https://macos.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://macos.telegram.org/updates/versions.xml'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app 'Telegram.app'

  zap trash: [
               '~/Library/Application Scripts/ru.keepcoder.Telegram',
               '~/Library/Application Scripts/ru.keepcoder.Telegram.TelegramShare',
               '~/Library/Containers/ru.keepcoder.Telegram',
               '~/Library/Containers/ru.keepcoder.Telegram.TelegramShare',
               '~/Library/Group Containers/*.ru.keepcoder.Telegram',
               '~/Library/Preferences/ru.keepcoder.Telegram.plist',
               '~/Library/Saved Application State/ru.keepcoder.Telegram.savedState',
             ]
end
