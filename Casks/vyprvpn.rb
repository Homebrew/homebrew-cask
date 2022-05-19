cask "vyprvpn" do
  version "4.5.0.9409"
  sha256 "979da3243bee5ca1b932a76eab955a31e278d72e167f0c99219b3e7821b228d3"

  url "https://www.goldenfrog.com/downloads/vyprvpn/desktop/mac/production/#{version}/VyprVPN_v#{version}.dmg"
  name "VyprVPN"
  desc "VPN client"
  homepage "https://www.goldenfrog.com/vyprvpn"

  livecheck do
    url "https://www.goldenfrog.com/downloads/vyprvpn/desktop/mac-feed.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

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
