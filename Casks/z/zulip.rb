cask "zulip" do
  arch arm: "arm64", intel: "x64"

  version "5.12.2"
  sha256 arm:   "37ad1a5fdbcdec749b0c7b6bedad497b5dc3724e1fbb1f12bd2bb97c0635176d",
         intel: "1a424896845dae6572b26c5c8e8a8adbb4d996b9b136f4268952a9817cf8a4bb"

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
