cask :v1 => 'universal-media-server' do
  version '5.0.0'
  sha256 '415d44f453db2c6d0a253ced2ef1897606a0004852c68443c117da1b7bfd5b32'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/unimediaserver/Official%20Releases/OS%20X/UMS-#{version}-Java8.dmg"
  homepage 'http://universalmediaserver.com'
  license :oss

  app 'Universal Media Server.app'
end
