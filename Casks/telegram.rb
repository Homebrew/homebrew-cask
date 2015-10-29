cask :v1 => 'telegram' do
  version '0.9.6'
  sha256 '65dea3c795114b8c71fc045f67cb5bb77c7fa197b4035bca90362a1731bd66ec'

  # tdesktop.com is the official download host per the vendor homepage
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  name 'Telegram Desktop'
  name 'tdesktop'
  homepage 'https://desktop.telegram.org/'
  license :gpl

  app 'Telegram.app'
end
