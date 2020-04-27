cask 'wondershare-filmora' do
  version '9.4.5.15'
  sha256 'b276852a3274e6d01f9e84c5d45c008e920f17f3242f630f918bb6c91b9c1d09'

  url "http://download.wondershare.com/filmora#{version.major}-mac_full718.dmg"
  name 'Wondershare Filmora9'
  homepage 'https://filmora.wondershare.com/video-editor/'

  app "Wondershare Filmora#{version.major}.app"
end
