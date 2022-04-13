cask "zulip" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.9.1"

  url "https://github.com/zulip/zulip-desktop/releases/download/v#{version}/Zulip-#{version}-#{arch}.dmg",
      verified: "github.com/zulip/zulip-desktop/"
  if Hardware::CPU.intel?
    sha256 "645be694af70dc5a9be4ab2c2d1d86b3e9283445f59e30c0e8e7fecc776f6ef8"
  else
    sha256 "b2ae74985fa5c8835be71da5a1e9b3477572fefb09e62a30436869b1d32d8a13"
  end

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
