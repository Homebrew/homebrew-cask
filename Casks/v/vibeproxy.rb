cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.258"
  sha256 arm:   "f115febcc427e18d8f658d8027d514491757b1972de751b4f2d1728105c53f1f",
         intel: "34ea83ffce5191d70e1c11434736c3bf791bf7c521ad4be4574f6513c6619009"

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
