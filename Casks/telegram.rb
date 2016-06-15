cask 'telegram' do
  version '0.9.51'
  sha256 '7d898a6ddc2c9a2722d37867d22b422d63cf218f721dbb8942d67696b2f6aadd'

  # tdesktop.com is the official download host per the vendor homepage
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram Desktop'
  homepage 'https://desktop.telegram.org/'
  license :gpl

  app 'Telegram.app'
end
