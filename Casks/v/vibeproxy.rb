cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.275"
  sha256 arm:   "37ea6d75fbab887a73e1e14971b9ca2a0ea4d4e37beccd61bf74af4bfa8260e3",
         intel: "8ca5d1eb226671744b5e9dbc6a96c4164c7604ea1d4f035120069f7f005e7f4c"

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
