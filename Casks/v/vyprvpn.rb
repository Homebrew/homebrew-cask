cask "vyprvpn" do
  version "6.0.3.11354"
  sha256 "fd032258369bdc286073a89d92c700e523ab9bb587064a742fb5497b7d483241"

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
