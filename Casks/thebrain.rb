cask 'thebrain' do
  version '10.0.56.0'
  sha256 'f02a1287ff1aaf99635089d894a6d7380306478d3767c47b354572dcbf3cba8b'

  url "http://updater.thebrain.com/files/TheBrain#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://salesapi.thebrain.com/?a=doDirectDownload%26id=10000'
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  app "TheBrain #{version.major}.app"
end
