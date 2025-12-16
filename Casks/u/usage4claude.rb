cask "usage4claude" do
  version "1.6.0"
  sha256 "87c84700248379e08adf47ebd62fc5587d4d3f7cacd00d9b4adbd72f36133380"

  url "https://github.com/f-is-h/Usage4Claude/releases/download/v#{version}/Usage4Claude.dmg",
      verified: "github.com/f-is-h/Usage4Claude/"
  name "Usage4Claude"
  desc "Monitor Claude AI usage quotas in real-time from the menu bar"
  homepage "https://github.com/f-is-h/Usage4Claude"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Usage4Claude.app"

  zap trash: [
    "~/Library/Application Support/Usage4Claude",
    "~/Library/Caches/com.fish.Usage4Claude",
    "~/Library/HTTPStorages/com.fish.Usage4Claude",
    "~/Library/Preferences/com.fish.Usage4Claude.plist",
  ]
end
