cask 'wondershare-filmora' do
  version '9.2.7'
  sha256 '48fae96afae045c7c7d76cb7594d0e6be85ea15a7adbec87af4b1ffdd20d225d'

  url "http://download.wondershare.com/filmora#{version.major}-mac_full718.dmg"
  name 'Wondershare Filmora9'
  homepage 'https://filmora.wondershare.com/video-editor/'

  app "Wondershare Filmora#{version.major}.app"
end
