cask "xstation5" do
  # NOTE: "5" is not a version number, but an intrinsic part of the product name
  version "2.41.3-Build.5"
  sha256 "770d044cf0484e4896dd2e0c33a3b6509e5395bacf41eb1c0cc0b9c53bf22226"

  url "https://desktopxstation5.xtb.com/prod/update/mac/xStation5-#{version}-mac.zip"
  name "xStation5"
  desc "Desktop trading platform"
  homepage "https://www.xtb.com/"

  livecheck do
    url "https://desktopxstation5.xtb.com/prod/update/mac/latest-mac.yml"
    strategy :electron_builder
  end

  app "xStation5.app"

  zap trash: [
    "~/Library/Application Support/xStation5",
    "~/Library/Caches/xstation5-updater",
    "~/Library/Logs/xStation5",
    "~/Library/Preferences/xStation5.desktop.x64.plist",
    "~/Library/Saved Application State/xStation5.desktop.x64.savedState",
  ]
end
