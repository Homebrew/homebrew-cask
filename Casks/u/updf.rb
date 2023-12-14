cask "updf" do
  version "1.7.9"
  sha256 :no_check

  url "https://download.updf.com/updf/basic/mac/apple/updf-mac-full.dmg"
  name "UPDF"
  desc "PDF editor"
  homepage "https://updf.com/"

  livecheck do
    url "https://download.updf.com/updf/update/mac/apple/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "UPDF.app"

  zap trash: [
    "~/Library/Application Support/com.superace.updf.installer",
    "~/Library/Application Support/com.superace.updf.mac",
    "~/Library/Caches/UPDF",
    "~/Library/Caches/UPDF Installer",
    "~/Library/Caches/com.superace.updf.installer",
    "~/Library/Caches/com.superace.updf.mac",
    "~/Library/HTTPStorages/com.superace.updf.installer",
    "~/Library/HTTPStorages/com.superace.updf.mac",
    "~/Library/HTTPStorages/com.superace.updf.mac.binarycookies",
    "~/Library/Preferences/com.superace.updf.installer.plist",
    "~/Library/Preferences/com.superace.updf.mac.file.plist",
    "~/Library/Preferences/com.superace.updf.mac.plist",
    "~/Library/Saved Application State/com.superace.updf.mac.savedState",
    "~/Library/WebKit/com.superace.updf.mac",
  ]
end
