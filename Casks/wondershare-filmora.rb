cask 'wondershare-filmora' do
  version '9.5.0.30'
  sha256 '28cee04f6309154fd333c23021a347a22c518ee23173e626867580629dccced1'

  url "http://download.wondershare.com/filmora#{version.major}-mac_full718.dmg"
  name 'Wondershare Filmora9'
  homepage 'https://filmora.wondershare.com/video-editor/'

  app "Wondershare Filmora#{version.major}.app"
end
