cask "vyprvpn" do
  version "5.1.0.10003"
  sha256 "90e007fd0b94ce8573981c91f16f115665cfd95e5749406b446b6d95cbfd6332"

  url "https://www.goldenfrog.com/downloads/vyprvpn/desktop/mac/production/#{version}/VyprVPN_v#{version}.dmg",
      verified: "goldenfrog.com/downloads/vyprvpn/"
  name "VyprVPN"
  desc "VPN client"
  homepage "https://www.vyprvpn.com/"

  livecheck do
    url "https://www.goldenfrog.com/downloads/vyprvpn/desktop/mac-feed.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "VyprVPN.app"

  uninstall launchctl: [
              "vyprvpnservice",
              "com.goldenfrog.resourcewatchdog",
              "com.goldenfrog.VyprVPNUserAgent",
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
