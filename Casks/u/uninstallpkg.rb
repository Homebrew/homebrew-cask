cask "uninstallpkg" do
  version "1.2.0"
  sha256 "35441d5520cdf0ac35e20c76704a65c97183d3729c49d1012c16a55a7056f70d"

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

  uninstall delete:    "/Library/PrivilegedHelperTools/com.corecode.UninstallPKGDeleteHelper",
            launchctl: "com.corecode.UninstallPKGDeleteHelper"

  zap trash: [
    "~/Library/Application Support/UninstallPKG",
    "~/Library/Preferences/com.corecode.UninstallPKG.plist",
    "~/Library/Saved Application State/com.corecode.UninstallPKG.savedState",
  ]
end
