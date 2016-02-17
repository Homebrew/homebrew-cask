cask 'telegram' do
  version '0.9.24'
  sha256 '93ef4ba0e84b6b76f9ab26a8a54085c21091667ee20f548b63be2512ab692a36'

  # tdesktop.com is the official download host per the vendor homepage
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram Desktop'
  homepage 'https://desktop.telegram.org/'
  license :gpl

  app 'Telegram.app'
end
