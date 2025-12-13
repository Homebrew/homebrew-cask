cask "zulip" do
  arch arm: "arm64", intel: "x64"

  version "5.12.3"
  sha256 arm:   "d2fe145f0d226ba124945e25f9c9a16051e61e15fc489f20a1ce15f22c96b699",
         intel: "2812423a61990d489929ba14e3b7064277cca879de9b487c437a77d1bd201ac5"

  url "https://github.com/zulip/zulip-desktop/releases/download/v#{version}/Zulip-#{version}-#{arch}.dmg",
      verified: "github.com/zulip/zulip-desktop/"
  name "Zulip"
  desc "Desktop client for the Zulip team chat platform"
  homepage "https://zulipchat.com/apps/"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Zulip.app"

  zap trash: [
    "~/Library/Application Support/Zulip",
    "~/Library/Caches/org.zulip.zulip-electron.helper",
    "~/Library/Logs/Zulip",
    "~/Library/Preferences/org.zulip.zulip-electron.helper.plist",
    "~/Library/Preferences/org.zulip.zulip-electron.plist",
    "~/Library/Saved Application State/org.zulip.zulip-electron.savedState",
  ]
end
