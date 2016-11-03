cask 'telegram-desktop' do
  version '0.10.19'
  sha256 '0e3a3d5c2558d1bebcab2904a2469509607538d55c217f0166f74cb0f7431cfd'

  # tdesktop.com was verified as official when first introduced to the cask
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram Desktop'
  homepage 'https://desktop.telegram.org'

  # Renamed to avoid conflict with telegram
  app 'Telegram.app', target: 'Telegram Desktop.app'
end
