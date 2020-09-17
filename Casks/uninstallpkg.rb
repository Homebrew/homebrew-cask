cask "uninstallpkg" do
  version "1.1.8"
  sha256 "d5b466d04e8594d166d05969b8df056d4c0e35ebd4e2934cc1528881b5f7be80"

  url "https://www.corecode.io/downloads/uninstallpkg_#{version}.zip"
  appcast "https://www.corecode.io/uninstallpkg/uninstallpkg.xml"
  name "UninstallPKG"
  homepage "https://www.corecode.io/uninstallpkg/"

  depends_on macos: ">= :mojave"

  app "UninstallPKG.app"

  uninstall delete:    "/Library/PrivilegedHelperTools/com.corecode.UninstallPKGDeleteHelper",
            launchctl: "com.corecode.UninstallPKGDeleteHelper"

  zap trash: [
    "~/Library/Application Support/UninstallPKG",
    "~/Library/Preferences/com.corecode.UninstallPKG.plist",
    "~/Library/Saved Application State/com.corecode.UninstallPKG.savedState",
  ]
end
