cask "viscosity" do
  version "1.9.2"
  sha256 "7f076785e462b9d53235ae7f0eaf3a03b5a3a3e6403fe784566d7bc3c1a9851a"

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
