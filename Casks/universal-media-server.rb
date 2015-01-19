cask :v1 => 'universal-media-server' do
  version '4.4.0'
  sha256 'ad73091e9ef5c6d7d884df35d3c2b55534765e56629932790989f6e4e0d78b06'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/unimediaserver/Official%20Releases/OS%20X/UMS-#{version}-Java8.dmg"
  homepage 'http://universalmediaserver.com'
  license :oss

  app 'Universal Media Server.app'
end
