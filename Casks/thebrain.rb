cask 'thebrain' do
  version '10.0.51.0'
  sha256 'dff763a3d69ebc0e260ded17adc7ba6473b88499fe9644864b9beb2a314e3758'

  url "http://updater.thebrain.com/files/TheBrain#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://salesapi.thebrain.com/?a=doDirectDownload%26id=10000'
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  app "TheBrain #{version.major}.app"
end
