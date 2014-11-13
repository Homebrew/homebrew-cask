cask :v1 => 'vlc-remote' do
  version :latest
  sha256 :no_check

  url 'http://hobbyistsoftware.com/Downloads/VLCRemote/latest-mac.php?cdn'
  appcast 'http://hobbyistsoftware.com/Downloads/VLCRemote/vlcSetupHelperVersions.xml'
  homepage 'http://hobbyistsoftware.com/vlc'
  license :unknown

  installer :manual => 'VLC Setup.app'
end
