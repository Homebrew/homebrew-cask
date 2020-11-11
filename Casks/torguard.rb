cask "torguard" do
  version "4.2.0"
  sha256 "08eb7dd0723099c91ffc3062bf60dfebd0c3e4f3c1b41921d939a8ef28459792"

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
