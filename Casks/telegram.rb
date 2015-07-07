cask :v1 => 'telegram' do
  version '0.8.21'
  sha256 '343176aabd1a4451bda97d84e9f6090c973eb7613c0cdbfa464e0eba301fbaaa'

  # tdesktop.com is the official download host per the vendor homepage
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  homepage 'https://telegram.org/'
  license :gpl

  app 'Telegram.app'
end
