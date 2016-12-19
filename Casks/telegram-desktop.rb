cask 'telegram-desktop' do
  version '0.10.20'
  sha256 'e16c9cdfa61547a2e3eefe5a17c3af4b7fae064f47a6b238020462d4014d367d'

  # tdesktop.com was verified as official when first introduced to the cask
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  appcast "https://tdesktop.com/mac/tupdates/current?version=#{version.no_dots}",
          checkpoint: '991eb0e3c8ce847a10a1a0af906e65cecda3b1f51d268f47109da1e72ef7e100'
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
