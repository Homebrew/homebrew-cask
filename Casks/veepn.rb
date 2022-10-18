cask "veepn" do
  version "2.2.0,918493"
  sha256 "6d55af3b8150821cd7de5f62a3d986e0dcc29e1415d2d4a947f6c40748ac63b0"

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
