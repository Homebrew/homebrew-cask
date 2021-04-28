cask "torguard" do
  version "4.6.0"
  sha256 "a74fe666aabc968c799a0cd03dfbb3879bbfa01eeaa98f2de27b847c92302131"

  url "https://updates.torguard.biz/Software/MacOSX/TorGuard-v#{version}.dmg",
      verified: "torguard.biz/"
  name "TorGuard"
  desc "VPN client"
  homepage "https://torguard.net/"

  livecheck do
    url "https://updates.torguard.biz/Software/MacOSX/checksums.sha256"
    strategy :page_match
    regex(/TorGuard-v(\d+(?:\.\d+)*)\.dmg/i)
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
