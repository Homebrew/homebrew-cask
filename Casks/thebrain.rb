cask "thebrain" do
  version "11.0.126.0"
  sha256 "1dd46d1c0474a502ba194a095c082c554f2ab451df24be365f6e30c928077dda"

  url "https://updater.thebrain.com/files/TheBrain#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://salesapi.thebrain.com/?a=doDirectDownload%26id=11000"
  name "TheBrain"
  homepage "https://www.thebrain.com/"

  app "TheBrain #{version.major}.app"
end
