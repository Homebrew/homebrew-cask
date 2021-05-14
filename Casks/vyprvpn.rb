cask "vyprvpn" do
  version "4.2.0.9114"
  sha256 "adbdc9cec1c9cc80b137a32f0043a5b22a092bcbde1f30c647de68abc69c55f1"

  url "https://www.goldenfrog.com/downloads/vyprvpn/desktop/mac/production/#{version}/VyprVPN_v#{version}.dmg"
  name "VyprVPN"
  homepage "https://www.goldenfrog.com/vyprvpn"

  livecheck do
    url "https://www.goldenfrog.com/downloads/vyprvpn/desktop/mac-feed.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "VyprVPN.app"

  uninstall quit:      "com.goldenfrog.VyprVPN*",
            launchctl: [
              "vyprvpnservice",
              "com.goldenfrog.resourcewatchdog",
              "com.goldenfrog.VyprVPNUserAgent",
            ],
            kext:      "com.goldenfrog.VyprVPNMalwareFilter"

  zap trash:     [
    "/Library/LaunchDaemons/vyrpvpnservice.plist",
    "/Library/PrivilegedHelperTools/vyprvpnservice",
    "~/Library/Caches/com.goldenfrog.VyprVPN",
    "~/Library/LaunchAgents/com.goldenfrog.VyprVPNUserAgent.plist",
    "~/Library/Logs/GoldenFrog/VyprVPN.log",
    "~/Library/Preferences/com.goldenfrog.VyprVPN.plist",
  ],
      kext:      [
        "net.sf.tuntaposx.tap",
        "net.sf.tuntaposx.tun",
      ],
      launchctl: "org.openvpn"
end
