cask "wifispoof" do
  version "4.1.4"
  sha256 "132a83b2154596efa0ae0518c8fba5ad1020b0f7762672cf01e2954b5234a189"

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
  depends_on macos: ">= :big_sur"

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
