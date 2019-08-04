cask 'thebrain' do
  version '10.0.52.0'
  sha256 '733a27dc3671c314deb184f39f490479ba4ae957841d5424c4244f805b2776ca'

  url "http://updater.thebrain.com/files/TheBrain#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://salesapi.thebrain.com/?a=doDirectDownload%26id=10000'
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  app "TheBrain #{version.major}.app"
end
