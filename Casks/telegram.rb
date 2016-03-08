cask 'telegram' do
  version '0.9.28'
  sha256 'a14912bbca1c67a6c0698d18dbae59d3387d43198c4ecd85676444ea8594f99d'

  # tdesktop.com is the official download host per the vendor homepage
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram Desktop'
  homepage 'https://desktop.telegram.org/'
  license :gpl

  app 'Telegram.app'
end
