cask 'thebrain' do
  version '10.0.53.0'
  sha256 '1e1f71eaa5c3d1eb1635e3ee0f62f9787e668c0aa41dfa6f975176c7dcd0a706'

  url "http://updater.thebrain.com/files/TheBrain#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://salesapi.thebrain.com/?a=doDirectDownload%26id=10000'
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  app "TheBrain #{version.major}.app"
end
