cask "veepn" do
  version "2.0.1,66431"
  sha256 "6aa503a97f9520d6047159299cf4d97e56fcce68ca85deaf1ad9e14c48869a7c"

  url "https://download.veepn.com/mac/VeePN_v#{version.csv.first}.dmg"
  name "VeePN"
  desc "VPN client"
  homepage "https://veepn.com/vpn-apps/vpn-for-mac/"

  livecheck do
    url "https://download.veepn.com/mac/appcast.xml"
    strategy :sparkle
  end

  app "VeePN.app"

  uninstall launchctl: "com.veepn.macos.helper"

  zap trash: [
    "~/Library/Application Support/com.veepn.macos.direct",
    "~/Library/Preferences/com.veepn.macos.direct.plist",
    "/Library/PrivilegedHelperTools/com.veepn.macos.helper",
  ]
end
