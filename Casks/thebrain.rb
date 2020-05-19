cask 'thebrain' do
  version '11.0.80.0'
  sha256 '4944417d06c264676718e82d698affe8396045015a4dd915c4f439e7ac86f5ed'

  url "https://updater.thebrain.com/files/TheBrain#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://salesapi.thebrain.com/?a=doDirectDownload%26id=11000'
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  app "TheBrain #{version.major}.app"
end
