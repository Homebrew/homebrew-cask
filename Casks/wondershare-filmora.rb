cask 'wondershare-filmora' do
  version '9.3.6.1'
  sha256 'fcf12f16f50c907facf0011ed2695646f843e408332e674b7d56ebddc878bbeb'

  url "http://download.wondershare.com/filmora#{version.major}-mac_full718.dmg"
  name 'Wondershare Filmora9'
  homepage 'https://filmora.wondershare.com/video-editor/'

  app "Wondershare Filmora#{version.major}.app"
end
