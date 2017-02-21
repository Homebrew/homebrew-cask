cask 'telegram-desktop' do
  version '1.0.14'
  sha256 '5b26864a532ba90ba06179a68233f0c6549035d3133a887d71ac82657331098f'

  # tdesktop.com was verified as official when first introduced to the cask
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  appcast "https://tdesktop.com/mac/tupdates/current?version=#{version.no_dots}",
          checkpoint: '670837f1300c0f0aa7a7db9f10dc9fd121568eea9e9f87df5fe4768a5ff3c18c'
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
