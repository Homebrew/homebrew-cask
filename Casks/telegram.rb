cask 'telegram' do
  version '0.9.15'
  sha256 '68716e849af816a76c4ca91b27635fbc927d5952055e3813f8429b6f8d1a4512'

  # tdesktop.com is the official download host per the vendor homepage
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  name 'Telegram Desktop'
  name 'tdesktop'
  homepage 'https://desktop.telegram.org/'
  license :gpl

  app 'Telegram.app'
end
