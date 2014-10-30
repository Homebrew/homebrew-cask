class UniversalMediaServer < Cask
  version '4.2.0'
  sha256 '07f5aa01f9cc57db4501034495471c70151537356ad01a31daf30d0aabb69bdf'

  url "http://downloads.sourceforge.net/sourceforge/unimediaserver/Official%20Releases/OS%20X/UMS-#{version}-Java8.dmg"
  homepage 'www.universalmediaserver.com'
  license :oss

  app 'Universal Media Server.app'
end
