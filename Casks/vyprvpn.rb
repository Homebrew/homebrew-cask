cask "vyprvpn" do
  version "4.2.1.9152"
  sha256 "8c0ee94cc3a66d8e024f76850b213d4532caecb97c51fcf37b913ec949850377"

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
