cask 'telegram-desktop' do
  version '0.10.1'
  sha256 '2bd5b2880c9ab11b85aa43c46fcaaf93ab324b828d49534465bab70ea3dda852'

  # tdesktop.com was verified as official when first introduced to the cask
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram Desktop'
  homepage 'https://desktop.telegram.org'
  license :gpl

  # Renamed to avoid conflict with telegram
  app 'Telegram.app', target: 'Telegram Desktop.app'
end
