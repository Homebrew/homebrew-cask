cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.319"
  sha256 arm:   "e75f05af292693cf6b234a8e6ba62db7832eec72b94a006e50f4fa3e69534f74",
         intel: "4c61830261b827c2a90f945dc446b467e3b19c567c954dd27458f53fa0c11c43"

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
