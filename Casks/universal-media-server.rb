cask :v1 => 'universal-media-server' do
  version '5.0.1'
  sha256 'c89e298d592fe59fc1906c2cdcf4b26dfbac020e65314c9021ef031e4d8ce453'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/unimediaserver/Official%20Releases/OS%20X/UMS-#{version}-Java8.dmg"
  homepage 'http://universalmediaserver.com'
  license :gpl

  app 'Universal Media Server.app'
end
