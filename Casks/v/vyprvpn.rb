cask "vyprvpn" do
  version "6.0.4.11438"
  sha256 "11429f4c5f35a9ffa3086a1b7ee4b9740405e5fdbcd1b912dbbfcc8f54c0ef98"

  url "https://downloads.vyprvpn.com/downloads/vyprvpn/desktop/mac/production/#{version}/VyprVPN_v#{version}.dmg"
  name "VyprVPN"
  desc "VPN client"
  homepage "https://www.vyprvpn.com/"

  livecheck do
    url "https://www.vyprvpn.com/vpn-apps/vpn-for-mac"
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/VyprVPN.*?\.dmg}i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

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
