cask 'wondershare-filmora' do
  version '9.3.5.7'
  sha256 'db81803245f8216c4acb934b73b13c78d82d26d1cdcdbf486b11fba606abf7fb'

  url "http://download.wondershare.com/filmora#{version.major}-mac_full718.dmg"
  name 'Wondershare Filmora9'
  homepage 'https://filmora.wondershare.com/video-editor/'

  app "Wondershare Filmora#{version.major}.app"
end
