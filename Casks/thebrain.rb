cask "thebrain" do
  version "11.0.107.0"
  sha256 "7880e943c0670b2437908d59fe696968d5468a75489678a3b0319e463a37d2e1"

  url "https://updater.thebrain.com/files/TheBrain#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://salesapi.thebrain.com/?a=doDirectDownload%26id=11000"
  name "TheBrain"
  homepage "https://www.thebrain.com/"

  app "TheBrain #{version.major}.app"
end
