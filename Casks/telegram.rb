cask :v1 => 'telegram' do
  version '0.9.2'
  sha256 'fd6654a8f9d99fe04efb25ef239233f7ee500d1dc113c2e494e6b92c9897ec5b'

  # tdesktop.com is the official download host per the vendor homepage
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  name 'Telegram Desktop'
  name 'tdesktop'
  homepage 'https://desktop.telegram.org/'
  license :gpl

  app 'Telegram.app'
end
