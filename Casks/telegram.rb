cask 'telegram' do
  version '4.5-141717'
  sha256 '109eebfcf604b3f07f7998da7230f861dcee7aaf1326bb0acc54c3e8ca9235b6'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml'
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
