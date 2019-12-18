cask 'wondershare-filmora' do
  version '9.3.0.14'
  sha256 '38860fd15c01fc19e07eae4338a8b664a79db5688a46a45d78f35dcb84c0c6b9'

  url "http://download.wondershare.com/filmora#{version.major}-mac_full718.dmg"
  name 'Wondershare Filmora9'
  homepage 'https://filmora.wondershare.com/video-editor/'

  app "Wondershare Filmora#{version.major}.app"
end
