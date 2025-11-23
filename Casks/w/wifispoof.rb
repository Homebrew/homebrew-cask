cask "wifispoof" do
  version "4.1.3"
  sha256 "b921b40d50bf12c066618089b1cd38b02e0493edbf3e2ae16be038275f6f6cbd"

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
