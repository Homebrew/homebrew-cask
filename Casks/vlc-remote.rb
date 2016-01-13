cask 'vlc-remote' do
  version :latest
  sha256 :no_check

  url 'http://hobbyistsoftware.com/Downloads/VLCRemote/latest-mac.php?cdn'
  appcast 'http://hobbyistsoftware.com/Downloads/VLCRemote/vlcSetupHelperVersions.xml',
          :checkpoint => '59ab86dad470e43083ba3d6a670374beff8ac0921e3c935a7007a9fd07574568'
  name 'VLC Remote'
  homepage 'http://hobbyistsoftware.com/vlc'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  installer :manual => 'VLC Setup.app'
end
