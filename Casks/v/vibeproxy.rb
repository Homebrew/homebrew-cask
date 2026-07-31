cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.255"
  sha256 arm:   "aacfc3948c3a6ae0f4c793f9f18113acb86fa97d3417eb6fedef0f5ef671da26",
         intel: "2c828cf9066f9f1ef4332176434091687855a54939edb834a46f970bf210436b"

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
