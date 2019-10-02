cask 'telegram-desktop' do
  version '1.8.12'
  sha256 'd9983d76e7066bd642e74f8c21f007fd4ed0dd1d6fba99ec3138721a4e51afa2'

  # github.com/telegramdesktop/tdesktop was verified as official when first introduced to the cask
  url "https://github.com/telegramdesktop/tdesktop/releases/download/v#{version}/tsetup.#{version}.dmg"
  appcast 'https://github.com/telegramdesktop/tdesktop/releases.atom'
  name 'Telegram Desktop'
  homepage 'https://desktop.telegram.org/'

  auto_updates true
  conflicts_with cask: 'telegram-desktop-dev'

  # Renamed to avoid conflict with telegram
  app 'Telegram.app', target: 'Telegram Desktop.app'

  zap trash: [
               '~/Library/Application Support/Telegram Desktop',
               '~/Library/Preferences/com.tdesktop.Telegram.plist',
               '~/Library/Saved Application State/com.tdesktop.Telegram.savedState',
             ]
end
