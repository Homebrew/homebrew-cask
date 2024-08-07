cask "wifispoof" do
  version "4.0"
  sha256 "b233bd68afb26f55ac6ff7c0062818b3f77621730429ba0439a88d82d1cf569f"

  url "https://sweetpproductions.com/products/wifispoof#{version.major}/WiFiSpoof.dmg",
      verified: "sweetpproductions.com/products/"
  name "WiFiSpoof"
  desc "Change your computer's MAC address"
  homepage "https://wifispoof.com/"

  livecheck do
    url "https://sweetpproductions.com/products/wifispoof#{version.major}/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "WiFiSpoof.app"

  uninstall delete: [
    "/Library/LaunchDaemons/com.sweetpproductions.WiFiSpoofHelperTool.plist",
    "/Library/PrivilegedHelperTools/com.sweetpproductions.WiFiSpoofHelperTool",
  ]

  zap trash: [
    "~/Library/Application Scripts/com.sweetpproductions.WiFiSpoofApp",
    "~/Library/Containers/com.sweetpproductions.WiFiSpoofApp",
  ]
end
