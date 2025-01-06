cask "zulip" do
  arch arm: "arm64", intel: "x64"

  version "5.11.1"
  sha256 arm:   "d2c0462361ab1f8a0f8d0337d2ad1c24d6c0ff24cf85b476f7867a32843a6edf",
         intel: "2f838840d21376c5f7afc20830c02622ed75d70270846bb3c5ac147b78af3d49"

  url "https://github.com/zulip/zulip-desktop/releases/download/v#{version}/Zulip-#{version}-#{arch}.dmg",
      verified: "github.com/zulip/zulip-desktop/"
  name "Zulip"
  desc "Desktop client for the Zulip team chat platform"
  homepage "https://zulipchat.com/apps/"

  auto_updates true
  depends_on macos: ">= :catalina"

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
