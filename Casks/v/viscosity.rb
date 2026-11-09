cask "viscosity" do
  version "1.13.2"
  sha256 "31f9452b3e7f8961505f93517eb98d258da2ccdd571daffa1550e78e38ead66a"

  url "https://swupdate.sparklabs.com/download/mac/release/viscosity/Viscosity%20#{version}.dmg"
  name "Viscosity"
  desc "OpenVPN client with AppleScript support"
  homepage "https://www.sparklabs.com/viscosity/"

  livecheck do
    url "https://swupdate.sparklabs.com/appcast/mac/release/viscosity/"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Viscosity.app"

  uninstall launchctl: "com.sparklabs.ViscosityHelper",
            signal:    ["TERM", "com.viscosityvpn.Viscosity"],
            delete:    [
              "/Library/Application Support/Viscosity",
              "/Library/PrivilegedHelperTools/com.sparklabs.ViscosityHelper",
            ]

  zap trash: [
    "~/Library/Application Support/Viscosity",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.viscosityvpn.Viscosity",
    "~/Library/HTTPStorages/com.viscosityvpn.Viscosity",
    "~/Library/Preferences/com.viscosityvpn.Viscosity.plist",
  ]
end
