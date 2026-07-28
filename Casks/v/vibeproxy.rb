cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.252"
  sha256 arm:   "cd9ab5fbb1620cb76da810b663ed539b706f0759c9260c6b4eaa23f1defcb4e1",
         intel: "f23730e39e4321f7cdb5e065814905d1dc1936ab08313b84e6c46d9cc536fee3"

  url "https://github.com/automazeio/vibeproxy/releases/download/v#{version}/VibeProxy-#{arch}.dmg"
  name "VibeProxy"
  desc "Menu bar app for using AI subscriptions with coding tools"
  homepage "https://github.com/automazeio/vibeproxy"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "VibeProxy.app"

  zap trash: [
    "~/Library/HTTPStorages/com.vibeproxy.app",
    "~/Library/Preferences/com.vibeproxy.app.plist",
  ]
end
