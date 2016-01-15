cask 'vlc-remote' do
  version :latest
  sha256 :no_check

  url 'http://hobbyistsoftware.com/Downloads/VLCRemote/latest-mac.php?cdn'
  appcast 'http://hobbyistsoftware.com/Downloads/VLCRemote/vlcSetupHelperVersions.xml',
          :checkpoint => 'dbc6822df1776a697c456f13c7185db772ae288ba8c0b4062737b53584c7ac94'
  name 'VLC Remote'
  homepage 'http://hobbyistsoftware.com/vlc'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  installer :manual => 'VLC Setup.app'
end
