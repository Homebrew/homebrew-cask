cask 'universal-media-server' do
  version '5.3.0'
  sha256 '13dec722c7b85cf2e193639d15b37f11eda2fb7f17d02e33b28e06d67ecd94cc'

  # sourceforge.net/unimediaserver was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/unimediaserver/Official%20Releases/OS%20X/UMS-#{version}-Java8.dmg"
  appcast 'https://sourceforge.net/projects/unimediaserver/rss?path=/Official%20Releases',
          checkpoint: 'd84d75d92afff92462b5f39efdabacbdfd82ae3d70c7de130d32a43a3f38317d'
  name 'Universal Media Server'
  homepage 'http://universalmediaserver.com'
  license :gpl

  app 'Universal Media Server.app'
end
