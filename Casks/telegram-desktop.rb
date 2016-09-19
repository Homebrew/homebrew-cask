cask 'telegram-desktop' do
  version '0.10.6'
  sha256 'f3eeed343d21a03ad6c047564ee9ac249872291962de926c4376ed2e0de46c54'

  # tdesktop.com was verified as official when first introduced to the cask
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram Desktop'
  homepage 'https://desktop.telegram.org'
  license :gpl

  # Renamed to avoid conflict with telegram
  app 'Telegram.app', target: 'Telegram Desktop.app'
end
