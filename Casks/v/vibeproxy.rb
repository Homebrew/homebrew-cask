cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.316"
  sha256 arm:   "c7ef161c4577dafb1642da7abbc5e5134217306c8da11ddc50a2113b4302c630",
         intel: "9d28510a71df5c11f2c68c2e120e92cae8a83de5fe8d6ae317c49ad6c65c1229"

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
