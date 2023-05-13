cask "viscosity" do
  version "1.10.5"
  sha256 "bb968ea8c11a063cfda4e00029b73168c504b02412cffc4747484987d50f75de"

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

  uninstall delete:    [
              "/Library/Application Support/Viscosity",
              "/Library/PrivilegedHelperTools/com.sparklabs.ViscosityHelper",
            ],
            launchctl: "com.sparklabs.ViscosityHelper",
            signal:    ["TERM", "com.viscosityvpn.Viscosity"]

  zap trash: [
    "~/Library/Application Support/Viscosity",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.viscosityvpn.Viscosity",
    "~/Library/HTTPStorages/com.viscosityvpn.Viscosity",
    "~/Library/Preferences/com.viscosityvpn.Viscosity.plist",
  ]
end
