cask 'vlcstreamer' do
  version '5.03'
  sha256 '3da65d98106fce7737da677219cd372c35558f2a51658129ba37a8fb2d4e4fea'

  url "https://hobbyistsoftware.com/Downloads/VLCStreamer/Versions/VLCStreamer_#{version}.dmg"
  appcast 'https://hobbyistsoftware.com/Downloads/VLCStreamer/vlcStreamerVersions.xml',
          checkpoint: '9537fb425ab6442a1ffb8166cc1040068993738204b0f9ca2bc5e0b64f9c85ca'
  name 'VLC Streamer'
  homepage 'https://hobbyistsoftware.com/vlcstreamer'

  app 'VLCStreamer.app'
end
