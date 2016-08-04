cask 'telegram-desktop' do
  version '0.10.0'
  sha256 'cc360c9844fb95f3861843615980a9d48f348106a4c11023933989024ed4f88e'

  # tdesktop.com was verified as official when first introduced to the cask
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram Desktop'
  homepage 'https://desktop.telegram.org'
  license :gpl

  # Renamed to avoid conflict with telegram
  app 'Telegram.app', target: 'Telegram Desktop.app'
end
