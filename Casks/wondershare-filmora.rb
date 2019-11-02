cask 'wondershare-filmora' do
  version '9.2.9'
  sha256 'c51b35458ec3247b16f9acf620575d2dd6c0055b10f698d99fb310993b90ab2d'

  url "http://download.wondershare.com/filmora#{version.major}-mac_full718.dmg"
  name 'Wondershare Filmora9'
  homepage 'https://filmora.wondershare.com/video-editor/'

  app "Wondershare Filmora#{version.major}.app"
end
