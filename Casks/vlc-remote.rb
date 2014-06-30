class VlcRemote < Cask
  version 'latest'
  sha256 :no_check

  url 'http://hobbyistsoftware.com/Downloads/VLCRemote/latest-mac.php?cdn'
  appcast 'http://hobbyistsoftware.com/Downloads/VLCRemote/vlcSetupHelperVersions.xml'
  homepage 'http://hobbyistsoftware.com/vlc'

  caskroom_only true
  caveats do
    manual_installer 'VLC Setup.app'
  end
end
