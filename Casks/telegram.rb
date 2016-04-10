cask 'telegram' do
  version '0.9.40'
  sha256 'a55ac6141b5ff76036d7ed7472ffb822cd09ec3f56f72feafe4dc7dcfed924fb'

  # tdesktop.com is the official download host per the vendor homepage
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram Desktop'
  homepage 'https://desktop.telegram.org/'
  license :gpl

  app 'Telegram.app'
end
