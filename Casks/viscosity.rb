cask "viscosity" do
  version "1.9"
  sha256 "516b93b0f1e3aad3953f20c0aa0edfe646d6c4796553ebfa4befc931c3e54e56"

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
