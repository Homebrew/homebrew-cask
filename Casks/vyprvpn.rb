cask "vyprvpn" do
  version "4.1.0.8945"
  sha256 "9e55b7a38283ca5afff3d000819353954c15770c73159934954035cd3e25e2e4"

  url "https://www.goldenfrog.com/downloads/vyprvpn/desktop/mac/production/#{version}/VyprVPN_v#{version}.dmg"
  appcast "https://www.goldenfrog.com/downloads/vyprvpn/desktop/mac-feed.xml"
  name "VyprVPN"
  homepage "https://www.goldenfrog.com/vyprvpn"

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
