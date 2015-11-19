cask :v1 => 'universal-media-server' do
  version '5.3.0'
  sha256 '13dec722c7b85cf2e193639d15b37f11eda2fb7f17d02e33b28e06d67ecd94cc'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/unimediaserver/Official%20Releases/OS%20X/UMS-#{version}-Java8.dmg"
  name 'Universal Media Server'
  homepage 'http://universalmediaserver.com'
  license :gpl

  app 'Universal Media Server.app'
end
