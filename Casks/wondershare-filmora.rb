cask 'wondershare-filmora' do
  version '9.4.9.2'
  sha256 '643230fe9fcbcd22e58267cd2dd7079d0626d7a1d437edab68ef45212fb1ca63'

  url "http://download.wondershare.com/filmora#{version.major}-mac_full718.dmg"
  name 'Wondershare Filmora9'
  homepage 'https://filmora.wondershare.com/video-editor/'

  app "Wondershare Filmora#{version.major}.app"
end
