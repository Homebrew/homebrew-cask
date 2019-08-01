cask 'vlcstreamer' do
  version '5.12'
  sha256 'a3d809692a3ba6b9c7b4c6acc8a3e305edbb22985c9fd39ca094aaa195a190a8'

  url "https://hobbyistsoftware.com/Downloads/VLCStreamer/Versions/VLCStreamer_#{version}.dmg"
  appcast 'https://hobbyistsoftware.com/vlcstreamer-versions'
  name 'VLC Streamer'
  homepage 'https://hobbyistsoftware.com/vlcstreamer'

  app 'VLCStreamer.app'
end
