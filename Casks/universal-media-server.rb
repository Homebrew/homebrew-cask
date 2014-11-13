cask :v1 => 'universal-media-server' do
  version '4.2.1'
  sha256 '9219b5d041b374e8d297536c06e0afa4ea3216ff1484493a849a8fa32e2b57b0'

  url "http://downloads.sourceforge.net/sourceforge/unimediaserver/Official%20Releases/OS%20X/UMS-#{version}-Java8.dmg"
  homepage 'www.universalmediaserver.com'
  license :oss

  app 'Universal Media Server.app'
end
