cask 'wondershare-filmora' do
  version '9.2.10'
  sha256 '00197b9d2aa2a36a20d87b3488c70d49a7e5d29c72631b374d71f318d81c2ace'

  url "http://download.wondershare.com/filmora#{version.major}-mac_full718.dmg"
  name 'Wondershare Filmora9'
  homepage 'https://filmora.wondershare.com/video-editor/'

  app "Wondershare Filmora#{version.major}.app"
end
