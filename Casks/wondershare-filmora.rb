cask 'wondershare-filmora' do
  version '9.2.11'
  sha256 '751d823a18daf31cb1d8d55c26c8e23eab32102888124d6b4de477ff95180ddb'

  url "http://download.wondershare.com/filmora#{version.major}-mac_full718.dmg"
  name 'Wondershare Filmora9'
  homepage 'https://filmora.wondershare.com/video-editor/'

  app "Wondershare Filmora#{version.major}.app"
end
