cask 'thebrain' do
  version '11.0.86.0'
  sha256 'acd2ba3307ce2857190ec4eb1df3c090e1da168554200dc27cffdc660914fb7a'

  url "https://updater.thebrain.com/files/TheBrain#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://salesapi.thebrain.com/?a=doDirectDownload%26id=11000'
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  app "TheBrain #{version.major}.app"
end
