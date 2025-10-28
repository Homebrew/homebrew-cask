cask "zen-privacy" do
  arch arm: "arm64", intel: "amd64"

  version "0.15.1"
  sha256 arm:   "5389cbea375766b2b9ba98122cffa90906403fe361b28da07bc0f7d53be82fb5",
         intel: "8ffacad1a2bebcde3de4330874f3b1260749fe5cd6b13477b9fc3f2816f7db92"

  url "https://github.com/ZenPrivacy/zen-desktop/releases/download/v#{version}/Zen_darwin_#{arch}_noselfupdate.tar.gz",
      verified: "github.com/ZenPrivacy/zen-desktop/"
  name "Zen"
  desc "Ad-blocker and privacy guard"
  homepage "https://zenprivacy.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "zen"

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
