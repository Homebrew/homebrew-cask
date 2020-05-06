cask 'telegram' do
  version '6.1.4.200209'
  sha256 'f8e81110a73e827bd422d8c49f3c7a12d9123614940d3e55b3d212cd46297f43'

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
               '~/Library/Caches/ru.keepcoder.Telegram',
               '~/Library/Containers/ru.keepcoder.Telegram',
               '~/Library/Containers/ru.keepcoder.Telegram.TelegramShare',
               '~/Library/Cookies/ru.keepcoder.Telegram.binarycookies',
               '~/Library/Group Containers/*.ru.keepcoder.Telegram',
               '~/Library/Preferences/ru.keepcoder.Telegram.plist',
               '~/Library/Saved Application State/ru.keepcoder.Telegram.savedState',
             ]
end
