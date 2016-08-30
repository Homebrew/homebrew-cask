cask 'universal-media-server' do
  version '6.5.0'
  sha256 'c5e1042b828029933582bda6e14bf7e1bce44a0f7e101cb38a9673ed7d089f9d'

  # sourceforge.net/unimediaserver was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/unimediaserver/Official%20Releases/OS%20X/UMS-#{version}-Java8.dmg"
  appcast 'https://sourceforge.net/projects/unimediaserver/rss?path=/Official%20Releases',
          checkpoint: 'ffd917aea00545d6f5384b267e6d27bb26dcc46527a478d73f8710871b8eadb9'
  name 'Universal Media Server'
  homepage 'http://universalmediaserver.com'
  license :gpl

  app 'Universal Media Server.app'
end
