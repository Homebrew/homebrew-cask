cask "zulip" do
  arch arm: "arm64", intel: "x64"

  version "5.10.2"
  sha256 arm:   "474d40453e5a30641509401f47f3a0a150487939368d4409c18638da32012ad3",
         intel: "4f3bdff695177f83e3c8299ba75ab7f50a18e623ac87e9ff9d86b67fc27e6bbf"

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
