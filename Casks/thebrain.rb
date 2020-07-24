cask 'thebrain' do
  version '11.0.103.0'
  sha256 'b0272dd7357bffd177aa00278bf6c033b4ec4c0d8f2b71266179fea5d169c038'

  url "https://updater.thebrain.com/files/TheBrain#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://salesapi.thebrain.com/?a=doDirectDownload%26id=11000'
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  app "TheBrain #{version.major}.app"
end
