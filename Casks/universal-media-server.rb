cask 'universal-media-server' do
  version '6.6.0'
  sha256 'bff9c419c5089030ac15881b37f83890e7482dc7636ac4b8c80d3f03844772b4'

  # sourceforge.net/unimediaserver was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/unimediaserver/Official%20Releases/OS%20X/UMS-#{version}-Java8.dmg"
  appcast 'https://sourceforge.net/projects/unimediaserver/rss?path=/Official%20Releases',
          checkpoint: '30aae405c758df9ac847221144dfb8e9615ef9111afa5976584a304a73f70560'
  name 'Universal Media Server'
  homepage 'http://www.universalmediaserver.com/'

  app 'Universal Media Server.app'
end
