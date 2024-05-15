cask "vyprvpn" do
  version "5.1.1.10028"
  sha256 "369f2173e3ea1b4bb58c1eda3989344286a7fac9c880d7420dcdd7f0157ec2fb"

  url "https://www.goldenfrog.com/downloads/vyprvpn/desktop/mac/production/#{version}/VyprVPN_v#{version}.dmg",
      verified: "goldenfrog.com/downloads/vyprvpn/"
  name "VyprVPN"
  desc "VPN client"
  homepage "https://www.vyprvpn.com/"

  livecheck do
    url "https://www.vyprvpn.com/vpn-apps/vpn-for-mac"
    regex(/href=.*?VyprVPN[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
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
