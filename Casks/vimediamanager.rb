cask 'vimediamanager' do
  version '0.7a14c'
  sha256 '2fb3dc8b5d2c5ab40a34e18c0860da98d1b92bac673f8a134bfca82cf013714a'

  url "http://mariusth.channelwood.org/vimediamanager/files/vimediamanager_v#{version}.dmg"
  appcast 'http://mariusth.heliohost.org/vimediamanager/appcast-cocoa.xml',
          :checkpoint => 'e222f18fca8d4f831dc28d370c7ace6c74d9e7aea5d9008595a2caebde2fae16'
  name 'ViMediaManager'
  homepage 'http://mariusth.heliohost.org/vimediamanager/'
  license :gratis

  app 'ViMediaManager.app'
end
