cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.266"
  sha256 arm:   "dc5433250373c3d495c73c0eae5545e32022ee92a38c57472a37e3d898d1fbc0",
         intel: "81cd0775db3e357e68e3f135bbe9158e5fb622a7c22e1ec348575e26617e39e0"

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
