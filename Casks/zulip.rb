cask "zulip" do
  version "5.6.0"
  sha256 "e4a50b3b5d01364c09e4033698b9dfc4d305cecf8b8985deecc6832528dd4a7d"

  url "https://github.com/zulip/zulip-desktop/releases/download/v#{version}/Zulip-#{version}.dmg",
      verified: "github.com/zulip/zulip-desktop/"
  appcast "https://github.com/zulip/zulip-desktop/releases.atom"
  name "Zulip"
  desc "Desktop client for the Zulip open source team chat platform"
  homepage "https://zulipchat.com/apps/"

  auto_updates true

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
