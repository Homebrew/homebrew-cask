cask 'telegram-desktop' do
  version '1.0.2'
  sha256 '010ebd4d7c6eed20138e2b94b3966d65964d934c3d2c91d5172700c16ea3e272'

  # tdesktop.com was verified as official when first introduced to the cask
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  appcast "https://tdesktop.com/mac/tupdates/current?version=#{version.no_dots}",
          checkpoint: 'ba02389eb576368f78f6b18b67dc8eb63e7d25513d3de80a02c028590dc79e27'
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
