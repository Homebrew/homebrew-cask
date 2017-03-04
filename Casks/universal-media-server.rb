cask 'universal-media-server' do
  version '6.5.3'
  sha256 '3da70e93852876f356e56bf2fec218c85e491df442b279da1afe5a930bc7b109'

  # sourceforge.net/unimediaserver was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/unimediaserver/Official%20Releases/OS%20X/UMS-#{version}-Java8.dmg"
  appcast 'https://sourceforge.net/projects/unimediaserver/rss?path=/Official%20Releases',
          checkpoint: '67e49cd9b6212a0b70a2d5fdd4020af425696a264388b6bf17047431eec69d87'
  name 'Universal Media Server'
  homepage 'http://www.universalmediaserver.com/'

  app 'Universal Media Server.app'
end
