cask "torguard" do
  version "4.1.2"
  sha256 "45d7a8f5c9d813cc1757e033552f7e81868a8da237d4df4e4037209112c238b1"

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
