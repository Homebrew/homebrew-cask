cask 'wondershare-filmora' do
  version '9.4.2.7'
  sha256 '4d88b1b6951973b408629a2558f27b8a1f07d392d37e70b41209fd8a0627cce0'

  url "http://download.wondershare.com/filmora#{version.major}-mac_full718.dmg"
  name 'Wondershare Filmora9'
  homepage 'https://filmora.wondershare.com/video-editor/'

  app "Wondershare Filmora#{version.major}.app"
end
