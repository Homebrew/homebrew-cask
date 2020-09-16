cask "thebrain" do
  version "11.0.119.0"
  sha256 "4f2d922defe3d2e463795ab19c28c40e9bb366464baa6206282f4f69bf0bfbf5"

  url "https://updater.thebrain.com/files/TheBrain#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://salesapi.thebrain.com/?a=doDirectDownload%26id=11000"
  name "TheBrain"
  homepage "https://www.thebrain.com/"

  app "TheBrain #{version.major}.app"
end
