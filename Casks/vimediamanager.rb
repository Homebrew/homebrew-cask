cask 'vimediamanager' do
  version '0.7a14c'
  sha256 '2fb3dc8b5d2c5ab40a34e18c0860da98d1b92bac673f8a134bfca82cf013714a'

  url "http://mariusth.channelwood.org/vimediamanager/files/vimediamanager_v#{version}.dmg"
  appcast 'http://mariusth.heliohost.org/vimediamanager/appcast-cocoa.xml',
          checkpoint: '432abeca6ddfeae43f3e915996d9f691ec7b066620545abe05b237d385e4a468'
  name 'ViMediaManager'
  homepage 'http://mariusth.heliohost.org/vimediamanager/'
  license :gratis

  app 'ViMediaManager.app'
end
