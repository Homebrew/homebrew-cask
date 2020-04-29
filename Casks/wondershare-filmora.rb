cask 'wondershare-filmora' do
  version '9.4.6.3'
  sha256 '526ddd15bb9a0583ecbf608f1a49e45faf783294561f7c32148729f724344ee6'

  url "http://download.wondershare.com/filmora#{version.major}-mac_full718.dmg"
  name 'Wondershare Filmora9'
  homepage 'https://filmora.wondershare.com/video-editor/'

  app "Wondershare Filmora#{version.major}.app"
end
