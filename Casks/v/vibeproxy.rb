cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.254"
  sha256 arm:   "2c298445ed8948e3e41c6353486df4562cf35444027449f217307ed9c1a5d64c",
         intel: "a83732e0925b0550687318f216609db5d61056b98dd554cad934a8600ae8acc4"

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
