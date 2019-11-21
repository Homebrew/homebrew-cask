cask 'thebrain' do
  version '10.0.64.0'
  sha256 '63eb56cc8175cef3eeea1c7086cc1e3c9129c41dea5e65955a9ab124b4f509ac'

  url "http://updater.thebrain.com/files/TheBrain#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://salesapi.thebrain.com/?a=doDirectDownload%26id=10000'
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  app "TheBrain #{version.major}.app"
end
