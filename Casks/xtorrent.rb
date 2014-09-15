class Xtorrent < Cask
  version '2.1 (v171)'
  sha256 '26ea235dcb827c6e58ab3409bec83396e86704d742d517e527016ecd44672379'

  url 'http://acquisition.dreamhosters.com/xtorrent/Xtorrent2.1(v171).dmg'
  appcast 'http://xtorrent.s3.amazonaws.com/appcast.xml'
  homepage 'http://www.xtorrent.com'

  app 'Xtorrent.app'
end
