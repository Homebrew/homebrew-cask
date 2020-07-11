cask 'thebrain' do
  version '11.0.99.0'
  sha256 '41f2b1f7889dc327f82f217f09e736ff5d848b2f7bc9e1f7e4ec6e1172763eaa'

  url "https://updater.thebrain.com/files/TheBrain#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://salesapi.thebrain.com/?a=doDirectDownload%26id=11000'
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  app "TheBrain #{version.major}.app"
end
