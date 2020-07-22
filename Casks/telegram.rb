cask 'telegram' do
  version '6.2.5.203437'
  sha256 'a42eb02f33b8298054d4dd22ac5c238e0e8ded88ce23d8cf4c8574dd3168eace'

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
