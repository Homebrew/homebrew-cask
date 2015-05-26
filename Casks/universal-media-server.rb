cask :v1 => 'universal-media-server' do
  version '5.1.0'
  sha256 '5056abd7c8b8c1c4dccd8f1339957446ea611e58a119af5785bd46e1178e43ae'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/unimediaserver/Official%20Releases/OS%20X/UMS-#{version}-Java8.dmg"
  name 'Universal Media Server'
  homepage 'http://universalmediaserver.com'
  license :gpl

  app 'Universal Media Server.app'
end
