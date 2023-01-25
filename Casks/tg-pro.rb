cask "tg-pro" do
  version "2.77,13848"
  sha256 "85126fd5662cabca461753a7548e63626c5141373abf8a4978779b88160914d9"

  url "https://www.tunabellysoftware.com/resources/TG%20Pro%20#{version.csv.first}.dmg"
  name "TG Pro"
  desc "Temperature monitoring, fan control and diagnostics"
  homepage "https://www.tunabellysoftware.com/tgpro/"

  livecheck do
    url "https://www.tunabellysoftware.com/resources/sparkle/tgpro.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "TG Pro.app"

  zap trash: [
    "/Library/LaunchDaemons/com.tunabellysoftware.TGFanHelper.plist",
    "/Library/PrivilegedHelperTools/com.tunabellysoftware.TGFanHelper",
    "~/Library/Application Support/TG Pro",
    "~/Library/Caches/com.tunabellysoftware.tgpro",
    "~/Library/Cookies/com.tunabellysoftware.tgpro.binarycookies",
    "~/Library/Preferences/com.tunabellysoftware.tgpro.plist",
  ]
end
