cask 'wondershare-filmora' do
  version '9.2.7'
  sha256 '4c94d484a5e856ea0b905670d060ecaf10f3bfcd52fe079ddf8c112b60e4868e'

  url "http://download.wondershare.com/filmora#{version.major}-mac_full718.dmg"
  name 'Wondershare Filmora9'
  homepage 'https://filmora.wondershare.com/video-editor/'

  app "Wondershare Filmora#{version.major}.app"
end
