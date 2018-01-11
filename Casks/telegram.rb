cask 'telegram' do
  version '3.7.3-113501'
  sha256 '5ba87b686c982a1919b16a5ff7f1e5baee9bf02700c3ec96bdfadf68fb23e106'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '88345f1395b9d656c3e8accb7dd61e1fa389ed295580e656d88d61dfccca3b40'
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
