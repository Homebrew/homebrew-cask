cask "zulip" do
  arch arm: "arm64", intel: "x64"

  version "5.10.0"
  sha256 arm:   "a885afad9a1d52b5b5b229a1ed87b8e4b5d5a7e1e2fc393c3c0efc95b13b2963",
         intel: "be60e2e7f4f6b0a6f518ed777ae1503bcbc16b04c164ae96c0a51e30f3bcf0c5"

  url "https://github.com/zulip/zulip-desktop/releases/download/v#{version}/Zulip-#{version}-#{arch}.dmg",
      verified: "github.com/zulip/zulip-desktop/"
  name "Zulip"
  desc "Desktop client for the Zulip team chat platform"
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
