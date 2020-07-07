cask 'wondershare-filmora' do
  version '9.5.1.13'
  sha256 'c61779db5cf1f4b8f5f102f1c77139aeeabeced08979ed51e607c1b1639b80fc'

  url "http://download.wondershare.com/filmora#{version.major}-mac_full718.dmg"
  name 'Wondershare Filmora9'
  homepage 'https://filmora.wondershare.com/video-editor/'

  app "Wondershare Filmora#{version.major}.app"
end
