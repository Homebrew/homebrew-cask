cask 'wondershare-filmora' do
  version '9.4.8.1'
  sha256 'd28f314ea60d2fbc913271cb1e9b75203e0bb5416c4fedafbf46173df1db9304'

  url "http://download.wondershare.com/filmora#{version.major}-mac_full718.dmg"
  name 'Wondershare Filmora9'
  homepage 'https://filmora.wondershare.com/video-editor/'

  app "Wondershare Filmora#{version.major}.app"
end
