cask 'wondershare-filmora' do
  version '9.5.0.33'
  sha256 '0a0f903f8e2129383a99e730fd4755254001ec4bbb63ca49fc0e1810d5a73727'

  url "http://download.wondershare.com/filmora#{version.major}-mac_full718.dmg"
  name 'Wondershare Filmora9'
  homepage 'https://filmora.wondershare.com/video-editor/'

  app "Wondershare Filmora#{version.major}.app"
end
