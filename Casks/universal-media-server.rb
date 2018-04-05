cask 'universal-media-server' do
  version '7.0.0'
  sha256 'f0ff3ee195279a14968113357a1799c21fe76caf386207614eb4deb857bec38c'

  # sourceforge.net/unimediaserver was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/unimediaserver/Official%20Releases/OS%20X/UMS-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/unimediaserver/rss?path=/Official%20Releases',
          checkpoint: 'a263f8b7fdc6fb12688aa507a99da65d72961128733e5a7173b82e952994bf87'
  name 'Universal Media Server'
  homepage 'http://www.universalmediaserver.com/'

  app 'Universal Media Server.app'

  zap trash: '~/Library/Application Support/UMS/'
end
