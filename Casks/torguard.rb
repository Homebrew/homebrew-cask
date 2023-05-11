cask "torguard" do
  version "4.8.19"
  sha256 "cb80ac66824bbb41d6d849f9abc69bf16a2abd0961d5ada338518fdb900f589d"

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
