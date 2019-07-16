cask 'universal-media-server' do
  version '8.2.0'
  sha256 'c0a9ed37a3ca9621b78a9470241136446e0b62a8bc1e5c7b85f5e2c1aa21d98d'

  # sourceforge.net/unimediaserver was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/unimediaserver/Official%20Releases/OS%20X/UMS-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/unimediaserver/rss?path=/Official%20Releases'
  name 'Universal Media Server'
  homepage 'https://www.universalmediaserver.com/'

  app 'Universal Media Server.app'

  zap trash: '~/Library/Application Support/UMS/'
end
