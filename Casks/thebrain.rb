cask "thebrain" do
  version "11.0.131.0"
  sha256 "145a9ad20115c2bfc7346880a67d6da4a621d28d25a6f9784c2aa63797b08116"

  url "https://updater.thebrain.com/files/TheBrain#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://salesapi.thebrain.com/?a=doDirectDownload%26id=11000"
  name "TheBrain"
  homepage "https://www.thebrain.com/"

  app "TheBrain #{version.major}.app"
end
