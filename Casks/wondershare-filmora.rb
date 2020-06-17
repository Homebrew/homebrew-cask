cask 'wondershare-filmora' do
  version '9.5.0.34'
  sha256 'ebd19be88a18a9043628b385154195a19e3f8f0f1e199eb9c72991a33195f33b'

  url "http://download.wondershare.com/filmora#{version.major}-mac_full718.dmg"
  name 'Wondershare Filmora9'
  homepage 'https://filmora.wondershare.com/video-editor/'

  app "Wondershare Filmora#{version.major}.app"
end
