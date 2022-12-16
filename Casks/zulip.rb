cask "zulip" do
  arch arm: "arm64", intel: "x64"

  version "5.9.3"
  sha256 arm:   "c2bd27cea8654eb58d2b6a6bd1688a799f718accb607d7142416c7f90644b70c",
         intel: "ac6f1aadc02dfe1ba04193f67f5f081b6f22d2bfde40c18956071e6cec9c390f"

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
