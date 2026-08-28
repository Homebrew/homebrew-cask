cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.282"
  sha256 arm:   "0d5a68d6308652f1654082fcee5c4ffd6ecfa49fc9a53d2d79a8954589651cef",
         intel: "57330380c26e2b3ebadcbf14ae5d3d22ea945cb1d6e9cc2e00de5ee536f63950"

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
