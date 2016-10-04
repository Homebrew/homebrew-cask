cask 'telegram-desktop' do
  version '0.10.11'
  sha256 '19d3ebbfb49189fcab30a70616d1293a9711b5215341752252f91ccf888748f6'

  # tdesktop.com was verified as official when first introduced to the cask
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram Desktop'
  homepage 'https://desktop.telegram.org'
  license :gpl

  # Renamed to avoid conflict with telegram
  app 'Telegram.app', target: 'Telegram Desktop.app'
end
