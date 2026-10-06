cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.325"
  sha256 arm:   "3eb0e2d8179d6a27c031da8856e78f4d0f7f3f8c6de58ac99ec298dd2a46119c",
         intel: "9e2c9021c8bfb376b08817629d50fab673b91299c13096930a96ee9e6f843696"

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
