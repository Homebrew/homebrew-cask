cask 'thebrain' do
  version '11.0.94.0'
  sha256 '47cb9eb770b6d39154107b64025352ca2ef38a69d5c55e652d144667ac2febe1'

  url "https://updater.thebrain.com/files/TheBrain#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://salesapi.thebrain.com/?a=doDirectDownload%26id=11000'
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  app "TheBrain #{version.major}.app"
end
