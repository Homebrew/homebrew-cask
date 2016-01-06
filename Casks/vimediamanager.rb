cask 'vimediamanager' do
  version '0.7a14c'
  sha256 '2fb3dc8b5d2c5ab40a34e18c0860da98d1b92bac673f8a134bfca82cf013714a'

  url "http://mariusth.channelwood.org/vimediamanager/files/vimediamanager_v#{version}.dmg"
  appcast 'http://mariusth.heliohost.org/vimediamanager/appcast-cocoa.xml',
          :sha256 => '79c39ee503db054d15de98571385729eee7f9a2392ec14b54a2ac2e85a381992'
  name 'ViMediaManager'
  homepage 'http://mariusth.heliohost.org/vimediamanager/'
  license :gratis

  app 'ViMediaManager.app'
end
