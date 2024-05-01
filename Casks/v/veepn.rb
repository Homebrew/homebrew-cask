cask "veepn" do
  version "2.3.7"
  sha256 "9cbd0e255c99377a4f818f480afa9520926eb7a42832d64bab1134a80d82cb80"

  url "https://download.veepn.com/mac/VeePN_v#{version}.dmg"
  name "VeePN"
  desc "VPN client"
  homepage "https://veepn.com/vpn-apps/vpn-for-mac/"

  livecheck do
    url "https://download.veepn.com/mac/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :big_sur"

  app "VeePN.app"

  uninstall launchctl: "com.veepn.macos.helper",
            delete:    "/Library/PrivilegedHelperTools/com.veepn.macos.helper"

  zap trash: [
    "~/Library/Application Support/com.veepn.macos.direct",
    "~/Library/Preferences/com.veepn.macos.direct.plist",
  ]
end
