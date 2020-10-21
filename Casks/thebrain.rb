cask "thebrain" do
  version "11.0.129.0"
  sha256 "17dcba43b228dd4b1c934e4e4138ff8eabb9ade638f8457f9bcec7423579ba06"

  url "https://updater.thebrain.com/files/TheBrain#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://salesapi.thebrain.com/?a=doDirectDownload%26id=11000"
  name "TheBrain"
  homepage "https://www.thebrain.com/"

  app "TheBrain #{version.major}.app"
end
