cask 'telegram-desktop' do
  version '0.10.8'
  sha256 '283709d0924381eeeb80e2a7d0e8551b80aaf5e2dbf86db307419029a01e1688'

  # tdesktop.com was verified as official when first introduced to the cask
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram Desktop'
  homepage 'https://desktop.telegram.org'
  license :gpl

  # Renamed to avoid conflict with telegram
  app 'Telegram.app', target: 'Telegram Desktop.app'
end
