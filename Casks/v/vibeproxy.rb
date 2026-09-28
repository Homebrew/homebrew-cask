cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.315"
  sha256 arm:   "bf19d9386d76699440526aed7b433f460ba34289d5b1809948fbaace81f0994f",
         intel: "e9544c4d4fd384977fbc6203e6ac0bec362be08d63bdf9049dac3099a5c656a1"

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
