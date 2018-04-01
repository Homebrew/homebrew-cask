cask 'universal-media-server' do
  version '6.7.4'
  sha256 'd2c5e4579ad705bdbdfb89ac5326a96a43aa18e7f4c82b01656e3d40ca8890a0'

  # sourceforge.net/unimediaserver was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/unimediaserver/Official%20Releases/OS%20X/UMS-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/unimediaserver/rss?path=/Official%20Releases',
          checkpoint: 'a6904fda55b82838bdc60eec7a5519776a1b7c418de20b0b9c747612f5e9ef59'
  name 'Universal Media Server'
  homepage 'http://www.universalmediaserver.com/'

  app 'Universal Media Server.app'

  zap trash: '~/Library/Application Support/UMS/'
end
