cask 'universal-media-server' do
  version '7.3.0'
  sha256 'dfd889e6d07f7fd0f7ed713f23969a2065c4bd85664e1146922cc0e7f4657eae'

  # sourceforge.net/unimediaserver was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/unimediaserver/Official%20Releases/OS%20X/UMS-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/unimediaserver/rss?path=/Official%20Releases'
  name 'Universal Media Server'
  homepage 'http://www.universalmediaserver.com/'

  app 'Universal Media Server.app'

  zap trash: '~/Library/Application Support/UMS/'
end
