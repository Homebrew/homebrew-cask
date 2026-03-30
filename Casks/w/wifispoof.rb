cask "wifispoof" do
  version "4.2"
  sha256 "8c73f8e7794eefd59a05006ed01904ac43c7555b7b6316bcafb42e168e71fd6f"

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
