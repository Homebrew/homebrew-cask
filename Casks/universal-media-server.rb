cask 'universal-media-server' do
  version '7.0.1'
  sha256 'd1007d93c711d3c1788946add48792b83664bc41c6eea975604204c4a89c489d'

  # sourceforge.net/unimediaserver was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/unimediaserver/Official%20Releases/OS%20X/UMS-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/unimediaserver/rss?path=/Official%20Releases',
          checkpoint: '8122b8947bec5bd6beb1f122b09c958aea3e591ccc84daec77babc39124a59e6'
  name 'Universal Media Server'
  homepage 'http://www.universalmediaserver.com/'

  app 'Universal Media Server.app'

  zap trash: '~/Library/Application Support/UMS/'
end
