cask "uninstallpkg" do
  version "1.2.0,1512"
  sha256 "1997d5ad61b809cc656214e7277d12e016bf6004b5ae04f241e0aa93d1814620"

  url "https://www.corecode.io/downloads/uninstallpkg_#{version.before_comma}.zip"
  name "UninstallPKG"
  desc "PKG software package uninstall tool"
  homepage "https://www.corecode.io/uninstallpkg/"

  livecheck do
    url "https://www.corecode.io/uninstallpkg/uninstallpkg.xml"
    strategy :sparkle
  end

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
