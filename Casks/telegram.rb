cask :v1 => 'telegram' do
  version '0.8.38'
  sha256 '1eadf4a061897070d993b2b17a208085834246548b8c6446f623e2710ec891a1'

  # tdesktop.com is the official download host per the vendor homepage
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  name 'Telegram Desktop'
  name 'tdesktop'
  homepage 'https://desktop.telegram.org/'
  license :gpl

  app 'Telegram.app'
end
