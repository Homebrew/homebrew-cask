class VlcRemote < Cask
  url 'http://hobbyistsoftware.com/Downloads/VLCRemote/latest-mac.php?cdn'
  homepage 'http://hobbyistsoftware.com/vlc'
  version 'latest'
  sha256 :no_check
  caskroom_only true
  caveats do
    manual_installer 'VLC Setup.app'
  end
end
