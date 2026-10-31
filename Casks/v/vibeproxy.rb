cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.352"
  sha256 arm:   "e1a822ddab52f83dd179d55131349d3db3d144e388f72382d414f72edc522dfc",
         intel: "17f79eaa84f1916592551dd8b2ebefc4c41b13ba6da80375e41c230be0ebc0a6"

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
