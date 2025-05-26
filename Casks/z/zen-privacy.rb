cask "zen-privacy" do
  arch arm: "arm64", intel: "amd64"

  version "0.11.0"
  sha256 arm:   "4f471538245d34cd83f00b630a0e97f27eae05cf19c76fe01c0a4de474dbbb9d",
         intel: "006ada795487bd02556b7c505f60e57b9d3522336d4b497a72d02c9fedd03a30"

  url "https://github.com/ZenPrivacy/zen-desktop/releases/download/v#{version}/Zen_darwin_#{arch}_noselfupdate.tar.gz",
      verified: "github.com/ZenPrivacy/zen-desktop/"
  name "Zen"
  desc "Ad-blocker and privacy guard"
  homepage "https://zenprivacy.net/"

  auto_updates true
  conflicts_with cask: "zen"
  depends_on macos: ">= :high_sierra"

  app "Zen.app"

  uninstall script: {
    executable:   "/Applications/Zen.app/Contents/MacOS/Zen",
    args:         ["--uninstall-ca"],
    must_succeed: false,
  }

  zap trash: [
    "~/Library/Application Support/Zen",
    "~/Library/Caches/Zen",
    "~/Library/LaunchAgents/net.zenprivacy.zen.plist",
    "~/Library/Logs/Zen",
    "~/Library/Preferences/net.zenprivacy.zen.plist",
    "~/Library/Saved Application State/net.zenprivacy.zen.savedState",
    "~/Library/WebKit/net.zenprivacy.zen",
  ]
end
