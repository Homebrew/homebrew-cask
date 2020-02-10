cask 'thebrain' do
  version '10.0.66.0'
  sha256 '2a9a7b6f08a2694e2ee94e4dd7217a4aaf7b53042557fd77b6b304909f3d1383'

  url "http://updater.thebrain.com/files/TheBrain#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://salesapi.thebrain.com/?a=doDirectDownload%26id=10000'
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  app "TheBrain #{version.major}.app"
end
