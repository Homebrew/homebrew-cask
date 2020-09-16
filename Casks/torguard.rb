cask "torguard" do
  version "4.1.1"
  sha256 "7de7a29e537f7d16f7428a0f037239032eab5c693b2ddb5cce5f1264f963d6d2"

  # torguard.biz/ was verified as official when first introduced to the cask
  url "https://updates.torguard.biz/Software/MacOSX/TorGuard-v#{version}.dmg"
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
