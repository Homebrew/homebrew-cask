cask "uninstallpkg" do
  version "1.1.8"
  sha256 "91d93fe72d5b0089890cfcb69ade5d5bdfd67159db1d94583a351200ed50fc98"

  url "https://www.corecode.io/downloads/uninstallpkg_#{version}.zip"
  appcast "https://www.corecode.io/uninstallpkg/uninstallpkg.xml"
  name "UninstallPKG"
  homepage "https://www.corecode.io/uninstallpkg/"

  app "UninstallPKG.app"

  uninstall delete:    "/Library/PrivilegedHelperTools/com.corecode.UninstallPKGDeleteHelper",
            launchctl: "com.corecode.UninstallPKGDeleteHelper"

  zap trash: [
    "~/Library/Application Support/UninstallPKG",
    "~/Library/Preferences/com.corecode.UninstallPKG.plist",
    "~/Library/Saved Application State/com.corecode.UninstallPKG.savedState",
  ]
end
