cask 'vlcstreamer' do
  version '5.01'
  sha256 '6e94668067018d086c14b2bc2ae06a7c4679f19773bb14295d196e4a2ea211df'

  url "http://hobbyistsoftware.com/Downloads/VLCStreamer/Versions/VLCStreamer_#{version}.dmg"
  appcast 'http://hobbyistsoftware.com/Downloads/VLCStreamer/vlcStreamerVersions.xml',
          checkpoint: '78c2313418c445d7b00d4f240bf7094ce571119aaeaab04ae61c1db4b649615f'
  name 'VLC Streamer'
  homepage 'http://hobbyistsoftware.com/vlcstreamer'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'VLCStreamer.app'
end
