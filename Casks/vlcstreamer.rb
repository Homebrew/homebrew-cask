cask 'vlcstreamer' do
  version '5.00'
  sha256 '1d5c17af0b2b17d4ba73c9eb03ba8499b53fe1e4e0131ec6c4efa807293029c2'

  url "http://hobbyistsoftware.com/Downloads/VLCStreamer/Versions/VLCStreamer_#{version}.dmg"
  appcast 'http://hobbyistsoftware.com/Downloads/VLCStreamer/vlcStreamerVersions.xml',
          checkpoint: 'd5e4b5b398851b83a028449091b4e5efaa6b04037b5c9ceec849efde96246e73'
  name 'VLC Streamer'
  homepage 'http://hobbyistsoftware.com/vlcstreamer'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'VLCStreamer.app'
end
