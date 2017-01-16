cask 'telegram-desktop' do
  version '1.0.0'
  sha256 '9f68ed96fd7a3850f2fa81a3383864ed35b1f24194bcbea3421dd1cd7fbbe1d3'

  # tdesktop.com was verified as official when first introduced to the cask
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  appcast "https://tdesktop.com/mac/tupdates/current?version=#{version.no_dots}",
          checkpoint: 'af0b8b05f5be2d5d10a0b19258e8edf050633814132df6c9f984dbb6de1f1b8f'
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
