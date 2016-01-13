cask 'vlcstreamer' do
  version :latest
  sha256 :no_check

  url 'http://hobbyistsoftware.com/Downloads/VLCStreamer/latest-mac.php?cdn'
  appcast 'http://hobbyistsoftware.com/Downloads/VLCStreamer/vlcStreamerVersions.xml',
          :checkpoint => '4dc80b0c0481113f000e61cf605422aa862219ace6a08fc511baf88926e6e5bc'
  name 'VLC Streamer'
  homepage 'http://hobbyistsoftware.com/vlcstreamer'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'VLCStreamer.app'
end
