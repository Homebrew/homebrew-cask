cask 'telegram-desktop' do
  version '0.10.7'
  sha256 '899c0de13274c8fe7b8cf187cb6b94addd5ead1568affa8b72e45900b88f4d06'

  # tdesktop.com was verified as official when first introduced to the cask
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram Desktop'
  homepage 'https://desktop.telegram.org'
  license :gpl

  # Renamed to avoid conflict with telegram
  app 'Telegram.app', target: 'Telegram Desktop.app'
end
