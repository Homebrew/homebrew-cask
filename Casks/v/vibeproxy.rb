cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.278"
  sha256 arm:   "53ec2f10563c4693e2ed2f41d66e0a1b4b79f33796d0025deaae4563a852897b",
         intel: "7582cfda0aa9c7770660e29bd5fd67ade2834d8ca38274fe045391c4ea9fd76f"

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
