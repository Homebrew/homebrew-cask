cask 'wondershare-filmora' do
  version '9.2.11'
  sha256 'b33dcc4425e219db602c7062047de10f4bbbc8dfc150ebd351b08b9a9cad5e64'

  url "http://download.wondershare.com/filmora#{version.major}-mac_full718.dmg"
  name 'Wondershare Filmora9'
  homepage 'https://filmora.wondershare.com/video-editor/'

  app "Wondershare Filmora#{version.major}.app"
end
