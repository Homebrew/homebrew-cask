cask 'vlc-remote' do
  version '3.60'
  sha256 'd2a1755f056cb6f492061d52a538ad7f801859348cc9a0f5453e94209082cb64'

  url "http://hobbyistsoftware.com/Downloads/VLCRemote/Versions/VLCSetup_#{version}.dmg"
  appcast 'http://hobbyistsoftware.com/Downloads/VLCRemote/vlcSetupHelperVersions.xml',
          checkpoint: 'dbc6822df1776a697c456f13c7185db772ae288ba8c0b4062737b53584c7ac94'
  name 'VLC Remote'
  homepage 'http://hobbyistsoftware.com/vlc'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  installer manual: 'VLC Setup.app'
end
