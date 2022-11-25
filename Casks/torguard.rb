cask "torguard" do
  version "4.8.15"
  sha256 "a78d94003d6b5da9ef60c5f425cb0ca2d57ff03650d585411ed279aa8d30dce7"

  url "https://updates.torguard.biz/Software/MacOSX/TorGuard-v#{version}.dmg",
      verified: "torguard.biz/"
  name "TorGuard"
  desc "VPN client"
  homepage "https://torguard.net/"

  livecheck do
    url "https://updates.torguard.biz/Software/MacOSX/checksums.sha256"
    regex(/TorGuard[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :sierra"

  pkg "Install TorGuard.pkg"

  uninstall pkgutil: "net.torguard.TorGuardDesktopQt",
            delete:  "/Applications/TorGuard.app"

  zap trash: [
    "~/Library/Preferences/net.torguard.TorGuard*.plist",
    "~/Library/Saved Application State/net.torguard.TorGuardDesktopQt.savedState",
  ]
end
