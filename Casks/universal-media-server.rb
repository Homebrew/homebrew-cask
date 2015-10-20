cask :v1 => 'universal-media-server' do
  version '5.2.1'
  sha256 '128ac6d8135c818f8901d10e976e546044e4084966988a9af3900bd776ed3f32'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/unimediaserver/Official%20Releases/OS%20X/UMS-#{version}-Java8.dmg"
  name 'Universal Media Server'
  homepage 'http://universalmediaserver.com'
  license :gpl

  app 'Universal Media Server.app'
end
