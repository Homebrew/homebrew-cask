cask 'vlc-remote' do
  version :latest
  sha256 :no_check

  url 'http://hobbyistsoftware.com/Downloads/VLCRemote/latest-mac.php?cdn'
  appcast 'http://hobbyistsoftware.com/Downloads/VLCRemote/vlcSetupHelperVersions.xml',
          :sha256 => 'cea78cc550a35357dde43460ffbb1512b2ec0f624a74eb8a10cc45db0d097c4c'
  name 'VLC Remote'
  homepage 'http://hobbyistsoftware.com/vlc'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  installer :manual => 'VLC Setup.app'
end
