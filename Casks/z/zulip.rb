cask "zulip" do
  arch arm: "arm64", intel: "x64"

  version "5.12.1"
  sha256 arm:   "a64970a38e0822620c48267e67084d6ee00be58c4c51f302f3eb40037bdcba66",
         intel: "f2d49334272379d5e1409985c03fe5687ee7493b7e312c4dbd7774a6aeb3db46"

  url "https://github.com/zulip/zulip-desktop/releases/download/v#{version}/Zulip-#{version}-#{arch}.dmg",
      verified: "github.com/zulip/zulip-desktop/"
  name "Zulip"
  desc "Desktop client for the Zulip team chat platform"
  homepage "https://zulipchat.com/apps/"

  auto_updates true
  depends_on macos: ">= :big_sur"

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
