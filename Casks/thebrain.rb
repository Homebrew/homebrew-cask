cask "thebrain" do
  version "11.0.122.0"
  sha256 "590113785a0f579879368e0fce18ead53454495d4ff8c7549b4c56862c83b705"

  url "https://updater.thebrain.com/files/TheBrain#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://salesapi.thebrain.com/?a=doDirectDownload%26id=11000"
  name "TheBrain"
  homepage "https://www.thebrain.com/"

  app "TheBrain #{version.major}.app"
end
