cask 'thebrain' do
  version '10.0.65.0'
  sha256 '481cd71a820ef52e3c3b5e9352ce71d8091ffd11e868a789b3e7ff1116ff0d03'

  url "http://updater.thebrain.com/files/TheBrain#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://salesapi.thebrain.com/?a=doDirectDownload%26id=10000'
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  app "TheBrain #{version.major}.app"
end
