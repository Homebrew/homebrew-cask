cask :v1 => 'xtorrent' do
  version '2.1(v171)'
  sha256 '26ea235dcb827c6e58ab3409bec83396e86704d742d517e527016ecd44672379'

  # dreamhosters.com is the official download host per the vendor homepage
  url "http://acquisition.dreamhosters.com/xtorrent/Xtorrent#{version}.dmg"
  name 'Xtorrent'
  appcast 'https://xtorrent.s3.amazonaws.com/appcast.xml',
          :sha256 => '21d8752a39782479a9f6f2485b0aba0af3f1f12d17ebc938c7526e5ca1a8b355'
  homepage 'http://www.xtorrent.com'
  license :freemium

  app 'Xtorrent.app'
end
