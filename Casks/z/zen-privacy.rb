cask "zen-privacy" do
  arch arm: "arm64", intel: "amd64"

  version "0.15.0"
  sha256 arm:   "921bd1c6032cb6a72d31d5a4f343936d5434ed7f294ffb26996b3d19cd3184f8",
         intel: "adf6ce0783ac2d6f6674088ff2a52fdac90d674bd5dfbe70ca93032990e35be4"

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
