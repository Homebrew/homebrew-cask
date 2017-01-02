cask 'universal-media-server' do
  version '6.5.2'
  sha256 'cae3723dcd690b853fa20fd4a12e81f5374cf7120c7aaced34308df389b8e0da'

  # sourceforge.net/unimediaserver was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/unimediaserver/Official%20Releases/OS%20X/UMS-#{version}-Java8.dmg"
  appcast 'https://sourceforge.net/projects/unimediaserver/rss?path=/Official%20Releases',
          checkpoint: '1a3f35179536365a9b295c1b2f0b4a1c79f57e039a6da3633a7b5626effe96e5'
  name 'Universal Media Server'
  homepage 'http://www.universalmediaserver.com/'

  app 'Universal Media Server.app'
end
