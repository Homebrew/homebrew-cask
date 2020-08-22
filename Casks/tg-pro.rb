cask "tg-pro" do
  version "2.49"
  sha256 "79d7d5f1d89e8a0405e9bc37b0a6a7b669923e8d139e445cc58ea2a9120ee7ed"

  url "https://www.tunabellysoftware.com/resources/TG%20Pro%20#{version}.dmg"
  appcast "https://www.tunabellysoftware.com/resources/sparkle/tgpro.xml"
  name "TG Pro"
  homepage "https://www.tunabellysoftware.com/tgpro/"

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
