cask 'telegram-desktop' do
  version '1.1.0'
  sha256 'cb24c002d5782dbe6cec66f5c8e9afc64c59d92889d95ef1a91ad66fe3a9a61e'

  # tdesktop.com was verified as official when first introduced to the cask
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  appcast "https://tdesktop.com/mac/tupdates/current?version=#{version.no_dots}",
          checkpoint: '28edd12eed731ea624021db344918734854f54d08f059789c22f358da500a74e'
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
