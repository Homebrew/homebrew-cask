cask 'thebrain' do
  version '10.0.50.0'
  sha256 '32eab7a6baa5887abd875a860ab4efdf9b0f4a63e84d35eedecc1244a28d0440'

  url "http://updater.thebrain.com/files/TheBrain#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://salesapi.thebrain.com/?a=doDirectDownload%26id=10000'
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  app "TheBrain #{version.major}.app"
end
