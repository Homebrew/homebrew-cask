cask "tg-pro" do
  version "2.65,13169"
  sha256 "77d12bb44976768c67c4bc365a663b18d3c40a34198ab9ac7ec00183068af925"

  url "https://www.tunabellysoftware.com/resources/TG%20Pro%20#{version.csv.first}.dmg"
  name "TG Pro"
  desc "Temperature monitoring, fan control and diagnostics"
  homepage "https://www.tunabellysoftware.com/tgpro/"

  livecheck do
    url "https://www.tunabellysoftware.com/resources/sparkle/tgpro.xml"
    strategy :sparkle
  end

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
