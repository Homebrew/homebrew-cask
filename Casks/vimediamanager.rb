cask :v1 => 'vimediamanager' do
  version '0.7a11c'
  sha256 '3642a38fdc4d995943e42bad538eb117ab225fb564c05701850fe01d9c99a035'

  url "http://mariusth.channelwood.org/vimediamanager/files/vimediamanager_v#{version}.dmg"
  homepage 'http://mariusth.channelwood.org/vimediamanager/'
  license :unknown

  app 'ViMediaManager.app'
end
