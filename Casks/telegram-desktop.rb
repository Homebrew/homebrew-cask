cask 'telegram-desktop' do
  version '1.0.12'
  sha256 '5a61daa1d30ea034d87114ba2ccb119207c87a1a946d7cfedf408f75f9ed35d5'

  # tdesktop.com was verified as official when first introduced to the cask
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  appcast "https://tdesktop.com/mac/tupdates/current?version=#{version.no_dots}",
          checkpoint: '98320bae1823c4dbdc9c3c33b54fca18adcb0ed48fa9ecddc13acd004c35f6e5'
  name 'Telegram Desktop'
  homepage 'https://desktop.telegram.org/'

  # Renamed to avoid conflict with telegram
  app 'Telegram.app', target: 'Telegram Desktop.app'

  zap delete: [
                '~/Library/Application Support/Telegram Desktop',
                '~/Library/Preferences/com.tdesktop.Telegram.plist',
                '~/Library/Saved Application State/com.tdesktop.Telegram.savedState',
              ]
end
