cask "zen-privacy" do
  version "0.10.0"

  on_intel do
    sha256 "7fb84580ed8424db4dde5c85d752c61bafa2a17d1c453569bdd94dde557e9e11"
    url "https://github.com/ZenPrivacy/zen-desktop/releases/download/v#{version}/Zen_darwin_amd64_noselfupdate.tar.gz",
        verified: "github.com/ZenPrivacy/zen-desktop/"
  end

  on_arm do
    sha256 "cd594e8e89fca50e6a49df0618baa7497440495fd7ef032620225db7a79f496e"
    url "https://github.com/ZenPrivacy/zen-desktop/releases/download/v#{version}/Zen_darwin_arm64_noselfupdate.tar.gz",
        verified: "github.com/ZenPrivacy/zen-desktop/"
  end

  app "Zen.app"
  name "Zen"
  desc "Simple, free and efficient ad-blocker and privacy guard"
  homepage "https://zenprivacy.net"

  auto_updates true
  conflicts_with cask: "zen"
  depends_on macos: ">= :catalina"

  uninstall script: {
    executable: "/Applications/Zen.app/Contents/MacOS/Zen",
    args: ["--uninstall-can"],
    must_succeed: false,
  }

  livecheck do
    url :url
    strategy :github_latest
  end

  zap trash: [
    "~/Library/Logs/Zen",
    "~/Library/Application Support/Zen",
    "~/Library/Caches/Zen",
    "~/Library/Saved Application State/net.zenprivacy.zen.savedState",
    "~/Library/Preferences/net.zenprivacy.zen.plist",
    "~/Library/LaunchAgents/net.zenprivacy.zen.plist",
    "~/Library/WebKit/net.zenprivacy.zen"
  ]
end
