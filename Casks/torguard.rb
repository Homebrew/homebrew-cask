cask "torguard" do
  version "4.1.0"
  sha256 "85c58dd2527392f255bf4504253fc5d11ef9a3006947505c31b3254394789cb2"

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
