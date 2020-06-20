cask 'thebrain' do
  version '11.0.98.0'
  sha256 '5a02f76a86a7642f4c793734f6da97ad558af3168d53b9e98047dccaf3a1166e'

  url "https://updater.thebrain.com/files/TheBrain#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://salesapi.thebrain.com/?a=doDirectDownload%26id=11000'
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  app "TheBrain #{version.major}.app"
end
