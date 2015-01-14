cask :v1 => 'telegram' do
  version '0.7.6'
  sha256 '6a3e8bdb90d16b881b565ea1a013a108de63886b9e6003371362c4990e25add3'

  # tdesktop.com is the official download host per the vendor homepage
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  homepage 'https://telegram.org/'
  license :gpl

  app 'Telegram.app'
end
