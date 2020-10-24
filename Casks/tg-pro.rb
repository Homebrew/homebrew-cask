cask "tg-pro" do
  version "2.52"
  sha256 "ca23fcaa6ced56840023211887039c124165c059c3a5d76fa4e7faf188ca1b16"

  url "https://www.tunabellysoftware.com/resources/TG%20Pro%20#{version}.dmg"
  appcast "https://www.tunabellysoftware.com/resources/sparkle/tgpro.xml"
  name "TG Pro"
  desc "Temperature monitoring, fan control and diagnostics"
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
