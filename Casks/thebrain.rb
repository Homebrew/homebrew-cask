cask "thebrain" do
  version "11.0.118.0"
  sha256 "330fdc92e450b67e31e5daf82658a0380f46bc8461e3fdf34eedd77265b97630"

  url "https://updater.thebrain.com/files/TheBrain#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://salesapi.thebrain.com/?a=doDirectDownload%26id=11000"
  name "TheBrain"
  homepage "https://www.thebrain.com/"

  app "TheBrain #{version.major}.app"
end
