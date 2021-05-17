cask "zulip" do
  version "5.7.0"

  if Hardware::CPU.intel?
    sha256 "10fafced6976512b3314489a9814bb8592854b265c61fa79704fd06e090fc3ec"

    url "https://github.com/zulip/zulip-desktop/releases/download/v#{version}/Zulip-#{version}.dmg",
        verified: "github.com/zulip/zulip-desktop/"
  else
    sha256 "3269570cc34fae881c426633aa7e269ee67328112f9cc4b44487bd2868a97208"

    url "https://github.com/zulip/zulip-desktop/releases/download/v#{version}/Zulip-#{version}-arm64.dmg",
        verified: "github.com/zulip/zulip-desktop/"
  end

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
