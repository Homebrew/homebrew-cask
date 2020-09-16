cask "viscosity" do
  version "1.8.6"
  sha256 "cea41c17b1dba0b3a6bcdfa51a0de3da5063534e2728476fbccb6f6b3f252b1b"

  url "https://swupdate.sparklabs.com/download/mac/release/viscosity/Viscosity%20#{version}.dmg"
  appcast "https://swupdate.sparklabs.com/appcast/mac/release/viscosity/"
  name "Viscosity"
  desc "VPN client for secure internet access and private browsing"
  homepage "https://www.sparklabs.com/viscosity/"

  auto_updates true

  app "Viscosity.app"

  uninstall delete:    [
    "/Library/Application Support/Viscosity",
    "/Library/PrivilegedHelperTools/com.sparklabs.ViscosityHelper",
  ],
            launchctl: "com.sparklabs.ViscosityHelper",
            signal:    ["TERM", "com.viscosityvpn.Viscosity"]

  zap trash: [
    "~/Library/Application Support/Viscosity",
    "~/Library/Caches/com.viscosityvpn.Viscosity",
    "~/Library/Cookies/com.viscosityvpn.Viscosity.binarycookies",
    "~/Library/Preferences/com.viscosityvpn.Viscosity.plist",
  ]
end
