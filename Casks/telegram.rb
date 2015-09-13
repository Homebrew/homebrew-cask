cask :v1 => 'telegram' do
  version '0.8.57'
  sha256 '869c56cab997e35c663a24fd2492f260ce957966325e66c6e186671bd661464b'

  # tdesktop.com is the official download host per the vendor homepage
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  name 'Telegram Desktop'
  name 'tdesktop'
  homepage 'https://desktop.telegram.org/'
  license :gpl

  app 'Telegram.app'
end
