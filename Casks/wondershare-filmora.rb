cask 'wondershare-filmora' do
  version '9.3.2.15'
  sha256 'bef9a7720277d244c57c032e25ac24beba337cfb7d1555b8b6484101f10b54fa'

  url "http://download.wondershare.com/filmora#{version.major}-mac_full718.dmg"
  name 'Wondershare Filmora9'
  homepage 'https://filmora.wondershare.com/video-editor/'

  app "Wondershare Filmora#{version.major}.app"
end
