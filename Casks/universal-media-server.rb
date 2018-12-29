cask 'universal-media-server' do
  version '7.7.1'
  sha256 '28c7e112f3d86fac1677cef62438550d8caaa1f725b3a6657b742b2d206167a7'

  # sourceforge.net/unimediaserver was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/unimediaserver/Official%20Releases/OS%20X/UMS-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/unimediaserver/rss?path=/Official%20Releases'
  name 'Universal Media Server'
  homepage 'https://www.universalmediaserver.com/'

  app 'Universal Media Server.app'

  zap trash: '~/Library/Application Support/UMS/'
end
