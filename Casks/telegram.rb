cask :v1 => 'telegram' do
  version '0.9.10'
  sha256 '8cff026fb5a001218ab89174b90b7a3eb7b2d157b473b6a7a778623d3a8d1cc1'

  # tdesktop.com is the official download host per the vendor homepage
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  name 'Telegram Desktop'
  name 'tdesktop'
  homepage 'https://desktop.telegram.org/'
  license :gpl

  app 'Telegram.app'
end
