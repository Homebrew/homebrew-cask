cask "tigervpn" do
  version "3.5.3"
  sha256 "992a145829a3df337d63ed65c4da09f65ad1978d53f85fee5c558fae6a25dfc6"

  url "https://www.tigervpn.com/assets/apps/tigerVPN_MAC_v#{version}.dmg"
  name "tigerVPN"
  homepage "https://www.tigervpn.com/"

  app "tigerVPN.app"

  uninstall delete:    "/Library/PrivilegedHelperTools/com.tigeratwork.tigerVPNmacHelper",
            launchctl: "com.tigeratwork.tigerVPNmacHelper"

  zap trash: [
    "~/Library/Application Support/tigerVPN",
    "~/Library/Application Support/com.apple.toolsQA.CocoaApp_CD/tigerVPN.storedata",
    "~/Library/Application Support/com.tigeratwork.tigerVPNmac",
    "~/Library/Preferences/com.tigeratwork.tigerVPNmac.plist",
    "~/Library/tigerVPN",
    "~/Library/Caches/com.crashlytics.data/com.tigeratwork.tigerVPNmac",
    "~/Library/Caches/tigerVPN",
    "~/Library/Caches/com.tigeratwork.tigerVPNmac",
    "~/Library/Caches/io.fabric.sdk.mac.data/com.tigeratwork.tigerVPNmac",
  ]

  caveats do
    discontinued
  end
end
