cask "thebrain" do
  version "11.0.125.0"
  sha256 "e500bb578087faf195e46a7bf36b6d8d1ede1398788d5c05d835faee08ded47c"

  url "https://updater.thebrain.com/files/TheBrain#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://salesapi.thebrain.com/?a=doDirectDownload%26id=11000"
  name "TheBrain"
  homepage "https://www.thebrain.com/"

  app "TheBrain #{version.major}.app"
end
