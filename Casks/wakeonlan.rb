cask 'wakeonlan' do
  version '1.0'
  sha256 '00d86efd23e9d5de5451e26d6957f3af1a1a3bc66d11c50b8563454113fd5ab1'

  url "https://www.readpixel.com/downloads/files/WakeOnLan#{version}.zip"
  appcast 'https://www.readpixel.com/wakeonlan/',
          checkpoint: '071297f366dc484ab49cf01dfb531881f98fd404aebbb4a25e7956234a1b0be4'
  name 'WakeOnLan'
  homepage 'https://www.readpixel.com/wakeonlan/'

  app 'WakeOnLan/WakeOnLan.app'
end
