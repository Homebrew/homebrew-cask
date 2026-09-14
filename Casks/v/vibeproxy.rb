cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.297"
  sha256 arm:   "3f05ea5fa0f192626b81fdfcc42f340c13a042a4bf0a9cb1fde92719c6b872ae",
         intel: "b352877994c3d2305342456c8e9f59f0e57d132a91e7a880d8d2f6d1e44ee2bf"

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
