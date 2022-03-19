cask "zulip" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.8.1"

  url "https://github.com/zulip/zulip-desktop/releases/download/v#{version}/Zulip-#{version}-#{arch}.dmg",
      verified: "github.com/zulip/zulip-desktop/"
  if Hardware::CPU.intel?
    sha256 "ccf3ec50b1c3d1dd92d0b5c3307514b73f72056b56e9015b8e911b2fa2dcd887"
  else
    sha256 "561a49f84a1a035e26fd9f18b6cfc36da6a028fb4eeb8d6034a8c8d994e5efeb"
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
