cask "veepn" do
  version "2.2.2,918496"
  sha256 "3d7a0790b514d17c1bc2dcb2a504ff8d8ddffde0596afbf129529c19ee99874c"

  url "https://download.veepn.com/mac/VeePN_v#{version.csv.first}.dmg"
  name "VeePN"
  desc "VPN client"
  homepage "https://veepn.com/vpn-apps/vpn-for-mac/"

  livecheck do
    url "https://download.veepn.com/mac/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "VeePN.app"

  uninstall launchctl: "com.veepn.macos.helper",
            delete:    "/Library/PrivilegedHelperTools/com.veepn.macos.helper"

  zap trash: [
    "~/Library/Application Support/com.veepn.macos.direct",
    "~/Library/Preferences/com.veepn.macos.direct.plist",
  ]
end
