cask 'telegram' do
  version '0.9.26'
  sha256 '9be6fcfb1cccf4adeb1f01e580309919472120d12f3f1d689dcf106f57c0811e'

  # tdesktop.com is the official download host per the vendor homepage
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram Desktop'
  homepage 'https://desktop.telegram.org/'
  license :gpl

  app 'Telegram.app'
end
