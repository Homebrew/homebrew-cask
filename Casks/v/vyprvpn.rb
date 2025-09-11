cask "vyprvpn" do
  version "6.0.2.11265"
  sha256 "aa48f057015c835a38fd6cda21601d790d87f5651fd50fe149fb2207b1780a34"

  url "https://downloads.vyprvpn.com/downloads/vyprvpn/desktop/mac/production/#{version}/VyprVPN_v#{version}.dmg"
  name "VyprVPN"
  desc "VPN client"
  homepage "https://www.vyprvpn.com/"

  livecheck do
    url "https://www.vyprvpn.com/vpn-apps/vpn-for-mac"
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/VyprVPN.*?\.dmg}i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "VyprVPN.app"

  uninstall launchctl: [
              "com.goldenfrog.resourcewatchdog",
              "com.goldenfrog.VyprVPNUserAgent",
              "vyprvpnservice",
            ],
            quit:      "com.goldenfrog.VyprVPN*",
            kext:      "com.goldenfrog.VyprVPNMalwareFilter"

  zap launchctl: "org.openvpn",
      kext:      [
        "net.sf.tuntaposx.tap",
        "net.sf.tuntaposx.tun",
      ],
      trash:     [
        "/Library/LaunchDaemons/vyrpvpnservice.plist",
        "/Library/PrivilegedHelperTools/vyprvpnservice",
        "~/Library/Caches/com.goldenfrog.VyprVPN",
        "~/Library/LaunchAgents/com.goldenfrog.VyprVPNUserAgent.plist",
        "~/Library/Logs/GoldenFrog/VyprVPN.log",
        "~/Library/Preferences/com.goldenfrog.VyprVPN.plist",
      ]
end
