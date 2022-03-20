cask "tg-pro" do
  version "2.67,13268"
  sha256 "fec383b4b8e338daaa1dffeeaf57ab0bc3ee7f0892654e502346f2abcdb204ad"

  url "https://www.tunabellysoftware.com/resources/TG%20Pro%20#{version.csv.first}.dmg"
  name "TG Pro"
  desc "Temperature monitoring, fan control and diagnostics"
  homepage "https://www.tunabellysoftware.com/tgpro/"

  livecheck do
    url "https://www.tunabellysoftware.com/resources/sparkle/tgpro.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

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
