cask "thebrain" do
  version "11.0.127.0"
  sha256 "309c5f90d9762945604d06b92bd90e381778cef54e239edd6225aa1b74f4766b"

  url "https://updater.thebrain.com/files/TheBrain#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://salesapi.thebrain.com/?a=doDirectDownload%26id=11000"
  name "TheBrain"
  homepage "https://www.thebrain.com/"

  app "TheBrain #{version.major}.app"
end
