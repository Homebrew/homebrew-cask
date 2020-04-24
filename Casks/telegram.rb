cask 'telegram' do
  version '6.1.1.197674'
  sha256 '60812daab2933620a8a8143a8fd2a45db9577d54db75071ef51b5081785a66ff'

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
