cask "torguard" do
  version "4.3.0"
  sha256 "3c14a3bca3b6fa258f0e10dc8af4a9642cd114015391f619d6fd6b03dbb65a73"

  url "https://updates.torguard.biz/Software/MacOSX/TorGuard-v#{version}.dmg",
      verified: "torguard.biz/"
  appcast "https://updates.torguard.biz/Software/MacOSX/checksums.sha256"
  name "TorGuard"
  homepage "https://torguard.net/"

  pkg "Install TorGuard.pkg"

  uninstall pkgutil: "net.torguard.TorGuardDesktopQt",
            delete:  "/Applications/TorGuard.app"

  zap trash: [
    "~/Library/Preferences/net.torguard.TorGuard*.plist",
    "~/Library/Saved Application State/net.torguard.TorGuardDesktopQt.savedState",
  ]
end
