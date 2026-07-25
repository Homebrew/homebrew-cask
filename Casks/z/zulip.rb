cask "zulip" do
  arch arm: "arm64", intel: "x64"

  version "5.12.4"
  sha256 arm:   "619cce44e8305766db464c8352f15c2ba4d7bb192fac52c30d6dd1d6d199eed6",
         intel: "27d5c08aeea4513a168a51d0f24996138f3a7d80b0a353c85828f0f4f77f4e35"

  url "https://github.com/zulip/zulip-desktop/releases/download/v#{version}/Zulip-#{version}-#{arch}.dmg",
      verified: "github.com/zulip/zulip-desktop/"
  name "Zulip"
  desc "Desktop client for the Zulip team chat platform"
  homepage "https://zulip.com/"

  auto_updates true
  depends_on macos: :monterey

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
