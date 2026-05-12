cask "zen-privacy" do
  arch arm: "arm64", intel: "amd64"

  version "0.21.1"
  sha256 arm:   "1dbddbd42885466de047e14435dff191577a524fc57293fbbb2746e0a2e1a20d",
         intel: "a6e34f4185ae420a7b4a3f2eddd8a73c1a99cd40a876e12a7127c16fc62c9a5e"

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
  depends_on :macos

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
