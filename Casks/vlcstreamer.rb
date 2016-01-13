cask 'vlcstreamer' do
  version :latest
  sha256 :no_check

  url 'http://hobbyistsoftware.com/Downloads/VLCStreamer/latest-mac.php?cdn'
  appcast 'http://hobbyistsoftware.com/Downloads/VLCStreamer/vlcStreamerVersions.xml',
          :checkpoint => 'f6e93c6c3700e6fb73bf154e016a814f6ee3fbb44bc1e22dac095c6bc14b6f6d'
  name 'VLC Streamer'
  homepage 'http://hobbyistsoftware.com/vlcstreamer'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'VLCStreamer.app'
end
