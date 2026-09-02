cask "veepn" do
  version "2.4.2"
  sha256 "36579dd3d5f0fbddc3ca32dd4e67aab9c3b981421365bcb6e9bc0fe4d6472ce1"

  url "https://download.veepn.com/mac/VeePN_v#{version}.dmg"
  name "VeePN"
  desc "VPN client"
  homepage "https://veepn.com/vpn-apps/vpn-for-mac/"

  livecheck do
    url "https://download.veepn.com/mac/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: :ventura

  app "VeePN.app"

  uninstall launchctl: "com.veepn.macos.helper",
            delete:    "/Library/PrivilegedHelperTools/com.veepn.macos.helper"

  zap trash: [
    "~/Library/Application Support/com.veepn.macos.direct",
    "~/Library/Preferences/com.veepn.macos.direct.plist",
  ]
end
