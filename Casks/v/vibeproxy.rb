cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.286"
  sha256 arm:   "e65f7a3420a072d27c408986766586e982228d84dfc2817267b2f98ac2ff606a",
         intel: "c971db27b9768696efd79955788eb2cae858eb70e24e610053b1e9734db36f8f"

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
