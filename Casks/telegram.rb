cask 'telegram' do
  version '0.9.42'
  sha256 '0a9f4187641f5e2963ca39d106f11ea204a2ff986a72b29e7b7bd5f8f28601c3'

  # tdesktop.com is the official download host per the vendor homepage
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram Desktop'
  homepage 'https://desktop.telegram.org/'
  license :gpl

  app 'Telegram.app'
end
