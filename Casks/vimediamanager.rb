cask :v1 => 'vimediamanager' do
  version '0.7a13c'
  sha256 'da5a1f76d556bbdb4cff76295cd0e60a47d05f6073b35dae20a88387f4eb10ce'

  url "http://mariusth.channelwood.org/vimediamanager/files/vimediamanager_v#{version}.dmg"
  name 'ViMediaManager'
  appcast 'http://mariusth.heliohost.org/vimediamanager/appcast-cocoa.xml',
          :sha256 => '595974a863e2502ca4cc038cf6f234d4e2606c93dd862bdfeacb50338fb6bf34'
  homepage 'http://mariusth.heliohost.org/vimediamanager/'
  license :gratis

  app 'ViMediaManager.app'
end
