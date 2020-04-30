cask 'wondershare-filmora' do
  version '9.4.7.1'
  sha256 '54ade79fa347750ab398024c84f8572f354b5fc6a828e9c685e392f7f6862e6f'

  url "http://download.wondershare.com/filmora#{version.major}-mac_full718.dmg"
  name 'Wondershare Filmora9'
  homepage 'https://filmora.wondershare.com/video-editor/'

  app "Wondershare Filmora#{version.major}.app"
end
