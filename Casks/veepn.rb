cask "veepn" do
  version "2.1.0,911009"
  sha256 "25f0376e95e6721de0c252a1cb9b3c2938055cb25ac3138abc8e421a1c52c16b"

  url "https://download.veepn.com/mac/VeePN_v#{version.csv.first}.dmg"
  name "VeePN"
  desc "VPN client"
  homepage "https://veepn.com/vpn-apps/vpn-for-mac/"

  livecheck do
    url "https://download.veepn.com/mac/appcast.xml"
    strategy :sparkle
  end

  app "VeePN.app"

  uninstall launchctl: "com.veepn.macos.helper",
            delete:    "/Library/PrivilegedHelperTools/com.veepn.macos.helper"

  zap trash: [
    "~/Library/Application Support/com.veepn.macos.direct",
    "~/Library/Preferences/com.veepn.macos.direct.plist",
  ]
end
