cask :v1 => 'vlcstreamer' do
  version :latest
  sha256 :no_check

  url 'http://hobbyistsoftware.com/Downloads/VLCStreamer/latest-mac.php?cdn'
  appcast 'http://hobbyistsoftware.com/Downloads/VLCStreamer/vlcStreamerVersions.xml'
  homepage 'http://hobbyistsoftware.com/vlcstreamer'
  license :unknown

  app 'VLCStreamer.app'
end
