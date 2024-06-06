cask "viscosity" do
  version "1.11.2"
  sha256 "a68ce36e8937c236da89e26ddc19876136529087ef6c052082fb07909cc42c6f"

  url "https://swupdate.sparklabs.com/download/mac/release/viscosity/Viscosity%20#{version}.dmg"
  name "Viscosity"
  desc "OpenVPN client with AppleScript support"
  homepage "https://www.sparklabs.com/viscosity/"

  livecheck do
    url "https://swupdate.sparklabs.com/appcast/mac/release/viscosity/"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :catalina"

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
