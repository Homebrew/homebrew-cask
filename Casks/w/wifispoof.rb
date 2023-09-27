cask "wifispoof" do
  version "3.9.2"
  sha256 "a29ec5485bd424ce34d14571947ae5314a59da47aee00656ea4e1aa0ce781b43"

  url "https://sweetpproductions.com/products/wifispoof#{version.major}/WiFiSpoof#{version.major}.dmg",
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
