cask "viscosity" do
  version "1.10.2"
  sha256 "06e9f2334cec27e241a218f760ecd2dec704a55b0309f5dd16e84e0f419e0638"

  url "https://swupdate.sparklabs.com/download/mac/release/viscosity/Viscosity%20#{version}.dmg"
  name "Viscosity"
  desc "VPN client for secure internet access and private browsing"
  homepage "https://www.sparklabs.com/viscosity/"

  livecheck do
    url "https://swupdate.sparklabs.com/appcast/mac/release/viscosity/"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

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
