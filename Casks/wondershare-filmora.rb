cask 'wondershare-filmora' do
  version '9.2.1'
  sha256 'beeaf7169436685b91255c5615288dabf6f4e4c5e51e1b76092bc48e1369e22d'

  url "http://download.wondershare.com/filmora#{version.major}-mac_full718.dmg"
  name 'Wondershare Filmora9'
  homepage 'https://filmora.wondershare.com/video-editor/'

  app "Wondershare Filmora#{version.major}.app"
end
