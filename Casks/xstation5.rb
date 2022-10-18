cask "xstation5" do
  # NOTE: "5" is not a version number, but an intrinsic part of the product name
  version "2.39.1-Build.3"
  sha256 "647671ccab3d11e98dd7ae7b23c8b9f69b547b801e394ec5dfbd1f62ebb689fd"

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
