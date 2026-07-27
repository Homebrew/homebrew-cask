cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.249"
  sha256 arm:   "c5400e651c87a5159da7be8de9f01e9af29f11a72b84ffabb26e7bf118786fc2",
         intel: "51bc2815e0050685c0b6686730f60742a41183121a7de994c876216ad16d750e"

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
