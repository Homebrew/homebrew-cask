cask "uninstallpkg" do
  version "1.2.1"
  sha256 "4b66f6a0638a5619308a84ff5d8b4405cdf60287d9c923ae7eda0b456a9f461c"

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
