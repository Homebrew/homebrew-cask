cask "zulip" do
  version "5.4.3"
  sha256 "68c253956f2be0e20ed73c538ffc9f71bab8c6e63c2eac51f53cecbcb0ba367e"

  # github.com/zulip/zulip-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/zulip/zulip-desktop/releases/download/v#{version}/Zulip-#{version}.dmg"
  appcast "https://github.com/zulip/zulip-desktop/releases.atom"
  name "Zulip"
  desc "Desktop client for the Zulip open source team chat platform"
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
