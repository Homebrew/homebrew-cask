cask "zen-privacy" do
  arch arm: "arm64", intel: "amd64"

  version "0.26.0"
  sha256 arm:   "720e099399d2d2a6fc818230ae1f108b9451ae6b3e7bfa97b60455e20c8724cd",
         intel: "a1e2af65fee9b3d73c0b7c92de329cb0e99028a6bcef9238db352c50047df20a"

  url "https://github.com/ZenPrivacy/zen-desktop/releases/download/v#{version}/Zen_darwin_#{arch}_noselfupdate.tar.gz"
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
