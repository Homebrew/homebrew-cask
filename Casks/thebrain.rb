cask "thebrain" do
  version "11.0.111.0"
  sha256 "603862e923c4bb1153ba575162b2e35b6c5665deca988d3c49a09e01553cdcf4"

  url "https://updater.thebrain.com/files/TheBrain#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://salesapi.thebrain.com/?a=doDirectDownload%26id=11000"
  name "TheBrain"
  homepage "https://www.thebrain.com/"

  app "TheBrain #{version.major}.app"
end
