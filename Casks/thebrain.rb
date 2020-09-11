cask "thebrain" do
  version "11.0.116.0"
  sha256 "5c1b611ab08ff3c883398191bdf99a98a3fcc5d6f0ce55ffe311b0517fc58112"

  url "https://updater.thebrain.com/files/TheBrain#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://salesapi.thebrain.com/?a=doDirectDownload%26id=11000"
  name "TheBrain"
  homepage "https://www.thebrain.com/"

  app "TheBrain #{version.major}.app"
end
