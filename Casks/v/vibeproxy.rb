cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.251"
  sha256 arm:   "9a068719b7ec21a50d3ccf0036d2e23f1dc6e7c38c53d5684296ffecec89a5fd",
         intel: "6d59d6aba70f6eeccd629fdc5f5553ad1a568485b0ee420ce5b14a244bd09412"

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
