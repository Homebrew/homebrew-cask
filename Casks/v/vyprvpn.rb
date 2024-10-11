cask "vyprvpn" do
  version "5.2.0.10702"
  sha256 "d6ec7e71ed6d0f85c778e5fcadf0073859e13aea7513f1ce4837a38700f595a7"

  url "https://www.vyprvpn.com/downloads/vyprvpn/desktop/mac/production/#{version}/VyprVPN_v#{version.major_minor_patch}.dmg"
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
