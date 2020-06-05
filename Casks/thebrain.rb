cask 'thebrain' do
  version '11.0.89.0'
  sha256 'e99d19d7bda286a3b9fa1389184743a322e2f32cd287bb293c4b7ed1f4d41f70'

  url "https://updater.thebrain.com/files/TheBrain#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://salesapi.thebrain.com/?a=doDirectDownload%26id=11000'
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  app "TheBrain #{version.major}.app"
end
