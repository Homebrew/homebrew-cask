cask "zulip" do
  arch arm: "arm64", intel: "x64"

  version "5.9.4"
  sha256 arm:   "d5e306c7ad38934100209dc54764bc3c88c8c9ccb71b4dd48608da87009c1486",
         intel: "24e741b2e971238aacf9d88085667cbd8fed6a8791d254cff1204c849a7c40ab"

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
