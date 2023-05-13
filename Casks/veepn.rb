cask "veepn" do
  version "2.3.0"
  sha256 "22218dfe3d55ed403c52051c432cc79041ab023350a8964ea0a7a525a13e22c4"

  url "https://download.veepn.com/mac/VeePN_v#{version}.dmg"
  name "VeePN"
  desc "VPN client"
  homepage "https://veepn.com/vpn-apps/vpn-for-mac/"

  livecheck do
    url "https://download.veepn.com/mac/appcast.xml"
    strategy :sparkle, &:short_version
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
