cask "uninstallpkg" do
  version "1.2.2"
  sha256 "acb66ab1885b213dd22cab0cea9405ef657649cec7d1cedf56079f1eb57f9418"

  url "https://www.corecode.io/downloads/uninstallpkg_#{version}.zip"
  name "UninstallPKG"
  desc "PKG software package uninstall tool"
  homepage "https://www.corecode.io/uninstallpkg/"

  livecheck do
    url "https://www.corecode.io/uninstallpkg/uninstallpkg.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :mojave"

  app "UninstallPKG.app"

  uninstall launchctl: "com.corecode.UninstallPKGDeleteHelper",
            delete:    "/Library/PrivilegedHelperTools/com.corecode.UninstallPKGDeleteHelper"

  zap trash: [
    "~/Library/Application Support/UninstallPKG",
    "~/Library/Preferences/com.corecode.UninstallPKG.plist",
    "~/Library/Saved Application State/com.corecode.UninstallPKG.savedState",
  ]
end
