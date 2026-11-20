cask "wifispoof" do
  version "4.3"
  sha256 "0fd95e9ce7ca9707185b84c698117099acc8e1382cb9975cc16fe34133f86ee5"

  url "https://sweetpproductions.com/products/wifispoof#{version.major}/WiFiSpoof.dmg"
  name "WiFiSpoof"
  desc "Change your computer's MAC address"
  homepage "https://wifispoof.com/"

  livecheck do
    url "https://sweetpproductions.com/products/wifispoof#{version.major}/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "WiFiSpoof.app"

  uninstall quit:   "com.sweetpproductions.WiFiSpoof#{version.major}",
            delete: [
              "/Library/LaunchDaemons/com.sweetpproductions.WiFiSpoofHelperTool.plist",
              "/Library/PrivilegedHelperTools/com.sweetpproductions.WiFiSpoofHelperTool",
            ]

  zap trash: [
    "~/Library/Application Scripts/com.sweetpproductions.WiFiSpoofApp",
    "~/Library/Containers/com.sweetpproductions.WiFiSpoofApp",
  ]
end
