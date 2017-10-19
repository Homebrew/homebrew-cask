cask 'telegram' do
  version '3.5.2-107970'
  sha256 'd980a064338ff35ef238fb46b289c467970bf5bce2e602c4d2a6a12173837bd4'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: 'd4994cb5085aa513bf830749af84caa04e8751a09c7f7571b2dc169c61d4457d'
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
