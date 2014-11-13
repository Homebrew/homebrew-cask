cask :v1 => 'xtorrent' do
  version '2.1 (v171)'
  sha256 '26ea235dcb827c6e58ab3409bec83396e86704d742d517e527016ecd44672379'

  url "http://acquisition.dreamhosters.com/xtorrent/Xtorrent#{version.gsub(' ','')}.dmg"
  appcast 'http://xtorrent.s3.amazonaws.com/appcast.xml',
          :sha256 => '21d8752a39782479a9f6f2485b0aba0af3f1f12d17ebc938c7526e5ca1a8b355'
  homepage 'http://www.xtorrent.com'
  license :unknown

  app 'Xtorrent.app'
end
