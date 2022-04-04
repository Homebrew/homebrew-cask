cask "zulip" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.9.0"

  url "https://github.com/zulip/zulip-desktop/releases/download/v#{version}/Zulip-#{version}-#{arch}.dmg",
      verified: "github.com/zulip/zulip-desktop/"
  if Hardware::CPU.intel?
    sha256 "065f08ebf7b44cb418d1831ddced3324502f5be2986fe52c6e7c5be5a05109d0"
  else
    sha256 "0152db38f7250a79aa63da35ccbf1a98b4e2693508a679388e3f09cdd1ceec03"
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
