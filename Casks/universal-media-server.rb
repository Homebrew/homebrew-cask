cask 'universal-media-server' do
  version '6.8.0'
  sha256 '06e182e0b8ad82c840f2315ba58c131d21f7b49f5d33cdd6b338b7d3e15e5fad'

  # sourceforge.net/unimediaserver was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/unimediaserver/Official%20Releases/OS%20X/UMS-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/unimediaserver/rss?path=/Official%20Releases',
          checkpoint: '094bbc906eff72bba4d130ebec216129201e34ef01b12c5b1a5c0e38141d9449'
  name 'Universal Media Server'
  homepage 'http://www.universalmediaserver.com/'

  app 'Universal Media Server.app'

  zap trash: '~/Library/Application Support/UMS/'
end
