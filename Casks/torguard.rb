cask "torguard" do
  version "4.8.21"
  sha256 "e0530791b30665e0c4b9ab5c9a74e49d497199909c84a633703bd5cf77a2fde4"

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
