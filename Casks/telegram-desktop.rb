cask 'telegram-desktop' do
  version '0.9.56'
  sha256 '38780ec8da8d0dd89a1ece7a4c1a7abcf30cdf1a7c2340567e87d5a45ef70072'

  # tdesktop.com was verified as official when first introduced to the cask
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram Desktop'
  homepage 'https://desktop.telegram.org'
  license :gpl

  # Renamed to avoid conflict with telegram
  app 'Telegram.app', target: 'Telegram Desktop.app'
end
