cask "vipriser" do
  version "3.5"
  sha256 "b01c3d0643143f456ed55a245c81b83e2aca6f4d3882ebbfabd87c6517f091f1"

  url "https://onflapp.github.io/blog/releases/vipriser/VipRiser.zip"
  appcast "https://onflapp.github.io/blog/releases/vipriser/appcast.xml"
  name "VipRiser"
  desc "Produce a PDF from any application that can print"
  homepage "https://onflapp.github.io/blog/pages/vipriser-pdf-ops/vipriser.html"

  app "VipRiser.app"

  uninstall launchctl: "com.onflapp.VipRiserAgent"

  zap trash: [
    "~/Library/Application Support/VipRiser",
    "~/Library/Application Support/com.onflapp.VipRiser",
    "~/Library/Caches/metadata/VipRiser",
    "~/Library/Caches/com.onflapp.VipRiser",
    "~/Library/Preferences/com.apple.print.custompresets.forprinter.Print_to_VipRiser.plist",
    "~/Library/Preferences/com.apple.print.custompresets.forprinter.VipRiser.plist",
    "~/Library/Preferences/com.onflapp.VipRiser.plist",
    "/var/db/recipts/com.onflapp.vipriser.driver.bom",
    "/var/db/recipts/com.onflapp.vipriser.driver.plist",
  ]
end
