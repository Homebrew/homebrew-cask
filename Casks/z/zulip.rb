cask "zulip" do
  arch arm: "arm64", intel: "x64"

  version "5.10.1"
  sha256 arm:   "8bc9c5403cc5bd178d344689043afa64063dfdff87ea1687fd799e049dc40762",
         intel: "ed25eb99b0d831b8f581f43fffb322fd3b08c2774edaf60e9b30cc3810ad0e4e"

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
