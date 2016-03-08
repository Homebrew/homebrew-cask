cask 'wakeonlan' do
  version '1.0'
  sha256 '00d86efd23e9d5de5451e26d6957f3af1a1a3bc66d11c50b8563454113fd5ab1'

  url "https://www.readpixel.com/downloads/files/WakeOnLan#{version}.zip"
  name 'WakeOnLan'
  homepage 'https://www.readpixel.com/wakeonlan/'
  license :gratis

  app 'WakeOnLan/WakeOnLan.app'
end
