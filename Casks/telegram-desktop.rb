cask 'telegram-desktop' do
  version '1.0.29'
  sha256 'fda92753e5311eec0b545bebcc1909164bd7c7f63bff434692ea7bcc4925da88'

  # tdesktop.com was verified as official when first introduced to the cask
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  appcast "https://tdesktop.com/mac/tupdates/current?version=#{version.no_dots}",
          checkpoint: '4dd92ab9cc86cfb77e459f94eb1ac43853cde252a19d2a5831be2dea64fe0a7b'
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
