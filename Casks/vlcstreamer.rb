cask 'vlcstreamer' do
  version '4.31'
  sha256 '722eef665e44a81880723f25c2bc9d42800d2259f22dd48a0c16518fe45909b1'

  url "http://hobbyistsoftware.com/Downloads/VLCStreamer/Versions/VLCStreamer_#{version}.dmg"
  appcast 'http://hobbyistsoftware.com/Downloads/VLCStreamer/vlcStreamerVersions.xml',
          checkpoint: 'f6e93c6c3700e6fb73bf154e016a814f6ee3fbb44bc1e22dac095c6bc14b6f6d'
  name 'VLC Streamer'
  homepage 'http://hobbyistsoftware.com/vlcstreamer'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'VLCStreamer.app'
end
