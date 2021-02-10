cask "zulip" do
  version "5.5.0"
  sha256 "fd1d1ca0a42cc1d8fb096dbf3e7a3ad70f45e077dffcd82914dcc5de26716cd5"

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
