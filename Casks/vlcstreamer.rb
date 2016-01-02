cask 'vlcstreamer' do
  version :latest
  sha256 :no_check

  url 'http://hobbyistsoftware.com/Downloads/VLCStreamer/latest-mac.php?cdn'
  appcast 'http://hobbyistsoftware.com/Downloads/VLCStreamer/vlcStreamerVersions.xml',
          :sha256 => '4f399361af7aea85d00ba7b89def316f121459f30a397753695a3c73d3e9b053'
  name 'VLC Streamer'
  homepage 'http://hobbyistsoftware.com/vlcstreamer'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'VLCStreamer.app'
end
