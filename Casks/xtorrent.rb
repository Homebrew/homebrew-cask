cask :v1 => 'xtorrent' do
  version '2.1(v171)'
  sha256 '26ea235dcb827c6e58ab3409bec83396e86704d742d517e527016ecd44672379'

  # dreamhosters.com is the official download host per the vendor homepage
  url "http://acquisition.dreamhosters.com/xtorrent/Xtorrent#{version}.dmg"
  name 'Xtorrent'
  appcast 'https://xtorrent.s3.amazonaws.com/appcast.xml',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  homepage 'http://www.xtorrent.com'
  license :freemium

  app 'Xtorrent.app'
end
