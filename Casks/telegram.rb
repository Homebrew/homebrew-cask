cask :v1 => 'telegram' do
  version '0.8.3'
  sha256 'e1ece44ceba78952f113759ad425cf9ebddae357fd6ca6eebd559195fadbc704'

  # tdesktop.com is the official download host per the vendor homepage
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  homepage 'https://telegram.org/'
  license :gpl

  app 'Telegram.app'
end
