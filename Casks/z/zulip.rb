cask "zulip" do
  arch arm: "arm64", intel: "x64"

  version "5.10.5"
  sha256 arm:   "488ec60a5753f964561a3673ce66108a6169686f1473fa61abc9bd50f2422a79",
         intel: "5b1e49f581175c53bb91606994cb64ac78d48660f5ca4789a0dae5bbccff8f9f"

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
