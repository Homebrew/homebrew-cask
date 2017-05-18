cask 'telegram-desktop' do
  version '1.1.2'
  sha256 '70eb515b2dd628c2d164aed100c22f694544a47e1b351b580d2d3da2f8c80e32'

  # tdesktop.com was verified as official when first introduced to the cask
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  appcast "https://tdesktop.com/mac/tupdates/current?version=#{version.no_dots}",
          checkpoint: 'a287e33430bb88a7663a3630d2a1c9460a65ddd278e43ac4b3e2cbd70bebad33'
  name 'Telegram Desktop'
  homepage 'https://desktop.telegram.org/'

  conflicts_with cask: 'telegram-desktop-dev'

  # Renamed to avoid conflict with telegram
  app 'Telegram.app', target: 'Telegram Desktop.app'

  zap delete: [
                '~/Library/Application Support/Telegram Desktop',
                '~/Library/Preferences/com.tdesktop.Telegram.plist',
                '~/Library/Saved Application State/com.tdesktop.Telegram.savedState',
              ]
end
