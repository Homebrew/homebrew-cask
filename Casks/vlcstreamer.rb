class Vlcstreamer < Cask
  url 'http://hobbyistsoftware.com/Downloads/VLCStreamer/latest-mac.php?cdn'
  appcast 'http://hobbyistsoftware.com/Downloads/VLCStreamer/vlcStreamerVersions.xml'
  homepage 'http://hobbyistsoftware.com/vlcstreamer'
  version 'latest'
  sha256 :no_check
  link 'VLCStreamer.app'
end
