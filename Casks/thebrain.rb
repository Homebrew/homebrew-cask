cask 'thebrain' do
  version '11.0.96.0'
  sha256 'ca2ed54d3aef9101054610c5c0cb44a4d74fa40c9cf9c02e935fa01b5b8483c6'

  url "https://updater.thebrain.com/files/TheBrain#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://salesapi.thebrain.com/?a=doDirectDownload%26id=11000'
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  app "TheBrain #{version.major}.app"
end
