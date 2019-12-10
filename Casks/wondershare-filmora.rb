cask 'wondershare-filmora' do
  version '9.2.12.2'
  sha256 'ca2ce08a1d3a3ea49d0f82507e7e974f07069cbcd79e19f06412954785b76ff5'

  url "http://download.wondershare.com/filmora#{version.major}-mac_full718.dmg"
  name 'Wondershare Filmora9'
  homepage 'https://filmora.wondershare.com/video-editor/'

  app "Wondershare Filmora#{version.major}.app"
end
